<?php
require_once(APPPATH . '../vendor/autoload.php');

defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Exportdaily extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->library('session');
    }

    public function daily_excel()
    {
        $branch_code = $this->input->post('f_branch_code');
        $date_start  = $this->input->post('date_start');
        $date_end    = $this->input->post('date_end');		
        $formname    = $this->input->post('formname') ?: 'qsc1';	
		//var_dump($this->input->post());die();

        $lang = $this->session->userdata('lang');
        $lang = $this->session->userdata('lang');
        if (!$lang || !in_array($lang, ['th', 'en'])) {
            $lang = 'th';
        }
        $topic_column = ($lang === 'en') ? 'f_topic_detail_en' : 'f_topic_detail_th';

        $this->db->order_by('f_topic_code', 'ASC');
        $topics = $this->db->get("tbl_{$formname}_topic_detail")->result_array();
        $topic_count = count($topics);

        $branch_name = '';
        $branch_data = $this->db->where('f_branch_code', $branch_code)
                                ->get('tbl_branch')
                                ->row_array();
        if ($branch_data) {
            $branch_name = $branch_data['f_branch_name_th'];
        }

        $this->db->where('f_branch_code', $branch_code);
        $this->db->where("DATE(f_datetime) BETWEEN '{$date_start}' AND '{$date_end}'");
        $this->db->order_by('f_sum_id', 'DESC');
        $summaries = $this->db->get("tbl_sum_{$formname}")->result_array();
		
        $summary_map = [];
        foreach ($summaries as $row) {
            $day = date('Y-m-d', strtotime($row['f_datetime']));
            $summary_map[$day] = $row;
        }

        $sum_score = $sum_total = $sum_percentage = 0;
        $total_days = 0;

        $current = strtotime($date_start);
        $end     = strtotime($date_end);

        while ($current <= $end) {
            $day_str = date('Y-m-d', $current);
            $total_days++;

            if (isset($summary_map[$day_str])) {
                $sum_score      += $summary_map[$day_str]["f_{$formname}_sum"] ?? 0;
                $sum_total      += $summary_map[$day_str]["f_{$formname}_total"] ?? 0;
                $sum_percentage += $summary_map[$day_str]["f_{$formname}_percentage"] ?? 0;
            } else {
                $sum_score      += 0;
                $sum_total      += 0;
                $sum_percentage += 0;				
            }
            $current = strtotime("+1 day", $current);
        }
		
        $avg_score      = $total_days ? round($sum_score / $total_days, 2) : 0;
        $avg_total      = $total_days ? round($sum_total / $total_days, 2) : 0;
        $avg_percentage = $total_days ? round($sum_percentage / $total_days, 2) : 0;

        $report_titles = [
            'qsc1'  => 'Area Store visit Checklist',
            'bcl1'  => 'Area Bar Checklist',
            'dca1'  => 'Daily Kitchen Checklist',
            'qsce1' => 'QSC Evaluation'
        ];
        $report_title = isset($report_titles[$formname]) ? $report_titles[$formname] : 'Unknown Checklist';

        $spreadsheet = new Spreadsheet();
        $spreadsheet->getDefaultStyle()->getFont()->setName('TH Sarabun New')->setSize(14);
		
        // --- SHEET1: Summary ---
        $sheet1 = $spreadsheet->getActiveSheet();
        $sheet1->setTitle('Summary');

        $row = 1;
        $sheet1->setCellValue("B{$row}", 'สรุปรายงาน ' . $report_title);
        $row++;
        $sheet1->setCellValue("B{$row}", 'ชื่อสาขา: ' . $branch_name);
        $row++;
        $sheet1->setCellValue("B{$row}", 'ช่วงวันที่: ' . "{$date_start} ถึง {$date_end}");
        $row += 2;

        $sheet1->setCellValue("B{$row}", 'รวมคะแนนเฉลี่ย');
        $sheet1->setCellValue("C{$row}", $avg_score);
        $row++;
        $sheet1->setCellValue("B{$row}", 'คะแนนเต็มเฉลี่ย');
        $sheet1->setCellValue("C{$row}", $avg_total);
        $row++;
        $sheet1->setCellValue("B{$row}", 'เปอร์เซ็นต์เฉลี่ย');
        $sheet1->setCellValue("C{$row}", $avg_percentage / 100);
        $sheet1->getStyle("C{$row}")->getNumberFormat()->setFormatCode('0.00%');		
		
		
		
        // --- SHEETS รายวัน ---
        $period = new DatePeriod(
            new DateTime($date_start),
            new DateInterval('P1D'),
            (new DateTime($date_end))->modify('+1 day')
        );

        foreach ($period as $dateObj) {
            $date_str = $dateObj->format('Y-m-d');

            $newSheet = $spreadsheet->createSheet();
            $newSheet->setTitle($date_str);

            $this->db->where('f_branch_code', $branch_code);
            $this->db->where("DATE(f_datetime)", $date_str);
            $this->db->order_by('f_id', 'DESC');
            $checklist = $this->db->get("tbl_{$formname}_checklist")->row_array();

            $this->db->where('f_branch_code', $branch_code);
            $this->db->where("DATE(f_datetime)", $date_str);
            $this->db->order_by('f_sum_id', 'DESC');
            $daily_sum = $this->db->get("tbl_sum_{$formname}")->row_array();

            $daily_score      = $daily_sum["f_{$formname}_sum"] ?? 0;
            $daily_total      = $daily_sum["f_{$formname}_total"] ?? 0;
            $daily_percentage = $daily_sum["f_{$formname}_percentage"] ?? 0;

            $rowDaily = 1;
            $newSheet->setCellValue("A{$rowDaily}", 'ลำดับ');
            $newSheet->setCellValue("B{$rowDaily}", 'รายการตรวจสอบ');
            $newSheet->setCellValue("C{$rowDaily}", 'ผลตรวจ');
            $newSheet->setCellValue("D{$rowDaily}", 'ความคิดเห็น');

            $rowDaily++;
            for ($i = 1; $i <= $topic_count; $i++) {
                $topic_text = $topics[$i - 1][$topic_column] ?? 'N/A';
                $score = $checklist["f_score_$i"] ?? '';
                $comment = $checklist["f_comment_$i"] ?? '';

                $newSheet->setCellValue("A{$rowDaily}", $i);
                $newSheet->setCellValue("B{$rowDaily}", $topic_text);
                $newSheet->setCellValue("C{$rowDaily}", ($score === '1' ? 'ผ่าน' : ($score === '2' ? 'ไม่ผ่าน' : '')));
                $newSheet->setCellValue("D{$rowDaily}", $comment);
                $rowDaily++;
            }

            $rowDaily++;
            $newSheet->setCellValue("B{$rowDaily}", 'รวมคะแนนเฉลี่ย');
            $newSheet->setCellValue("C{$rowDaily}", $daily_score);
            $rowDaily++;
            $newSheet->setCellValue("B{$rowDaily}", 'คะแนนเต็มเฉลี่ย');
            $newSheet->setCellValue("C{$rowDaily}", $daily_total);
            $rowDaily++;
            $newSheet->setCellValue("B{$rowDaily}", 'เปอร์เซ็นต์เฉลี่ย');
            $newSheet->setCellValue("C{$rowDaily}", $daily_percentage . '%');			

        }

        $filename = 'Daily_Export_' . $branch_code . '_' . $date_start . '_to_' . $date_end . '.xlsx';
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header("Content-Disposition: attachment; filename=\"$filename\"");
        header('Cache-Control: max-age=0');

        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }
}
