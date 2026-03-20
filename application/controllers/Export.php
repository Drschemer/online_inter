<?php
require_once(APPPATH . '../vendor/autoload.php');

defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Export extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->library('session');
    }

    public function qsc_excel()
    {
        $branch_code = $this->input->post('f_branch_code');
        $date_start = $this->input->post('date_start');
        $date_end   = $this->input->post('date_end');

        var_dump($this->input->post());die();
        
        $lang = $this->session->userdata('lang');
        if (!$lang || !in_array($lang, ['th', 'en'])) {
            $lang = 'th';
        }
        $topic_column = ($lang === 'en') ? 'f_topic_detail_en' : 'f_topic_detail_th';

        $this->db->order_by('f_topic_code', 'ASC');
        $topics = $this->db->get('tbl_qsc1_topic_detail')->result_array();

        $branch_name = '';
        $branch_data = $this->db->where('f_branch_code', $branch_code)
                                ->get('tbl_branch')
                                ->row_array();
        if ($branch_data) {
            $branch_name = $branch_data['f_branch_name_th'];
        }

        $this->db->where('f_branch_code', $branch_code);
        $this->db->where("DATE(f_datetime) BETWEEN '{$date_start}' AND '{$date_end}'");
        $this->db->order_by('f_id', 'DESC');
        $checklist = $this->db->get('tbl_qsc1_checklist')->row_array();

        $this->db->where('f_branch_code', $branch_code);
        $this->db->where("DATE(f_datetime) BETWEEN '{$date_start}' AND '{$date_end}'");
        $this->db->order_by('f_image_id', 'DESC');
        $images = $this->db->get('tbl_qsc1_image')->row_array();

        $this->db->where('f_branch_code', $branch_code);
        $this->db->where("DATE(f_datetime) BETWEEN '{$date_start}' AND '{$date_end}'");
        $this->db->order_by('f_sum_id', 'DESC');
        $summaries = $this->db->get('tbl_sum_qsc1')->result_array();

        $total_days = count($summaries);
        $sum_score = 0;
        $sum_total = 0;
        $sum_percentage = 0;

        foreach ($summaries as $row) {
            $sum_score += $row['f_qsc1_sum'] ?? 0;
            $sum_total += $row['f_qsc1_total'] ?? 0;
            $sum_percentage += $row['f_qsc1_percentage'] ?? 0;
        }

        $avg_score = $total_days ? round($sum_score / $total_days, 2) : 0;
        $avg_total = $total_days ? round($sum_total / $total_days, 2) : 0;
        $avg_percentage = $total_days ? round($sum_percentage / $total_days, 2) : 0;

        $spreadsheet = new Spreadsheet();
        $spreadsheet->getDefaultStyle()->getFont()->setName('TH Sarabun New')->setSize(14);
        $sheet = $spreadsheet->getActiveSheet();

        $row = 1;
        $sheet->setCellValue("B{$row}", 'สรุปรายงาน Area Service Checklist');
        $row++;
        $sheet->setCellValue("B{$row}", 'ชื่อสาขา:');
        $sheet->setCellValue("C{$row}", $branch_name);
        $row++;
        $sheet->setCellValue("B{$row}", 'ช่วงวันที่:');
        $sheet->setCellValue("C{$row}", "{$date_start} ถึง {$date_end}");
        $row += 2;

        $sheet->setCellValue("B{$row}", 'รวมคะแนนเฉลี่ย');
        $sheet->setCellValue("C{$row}", $avg_score);
        $row++;
        $sheet->setCellValue("B{$row}", 'คะแนนเต็มเฉลี่ย');
        $sheet->setCellValue("C{$row}", $avg_total);
        $row++;
        $sheet->setCellValue("B{$row}", 'เปอร์เซ็นต์เฉลี่ย');
        $sheet->setCellValue("C{$row}", $avg_percentage . '%');

        $filename = 'QSC_Export_' . $branch_code . '_' . $date_start . '_to_' . $date_end . '.xlsx';

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header("Content-Disposition: attachment; filename=\"$filename\"");
        header('Cache-Control: max-age=0');

        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }

        public function daily_excel()
    {
        $branch_code = $this->input->post('f_branch_code');
        $date_start = $this->input->post('date_start');
        $date_end   = $this->input->post('date_end');

        var_dump($this->input->post());die();
        $lang = $this->session->userdata('lang');
        if (!$lang || !in_array($lang, ['th', 'en'])) {
            $lang = 'th';
        }
        $topic_column = ($lang === 'en') ? 'f_topic_detail_en' : 'f_topic_detail_th';

        $this->db->order_by('f_topic_code', 'ASC');
        $topics = $this->db->get('tbl_qsc1_topic_detail')->result_array();

        $branch_name = '';
        $branch_data = $this->db->where('f_branch_code', $branch_code)
                                ->get('tbl_branch')
                                ->row_array();
        if ($branch_data) {
            $branch_name = $branch_data['f_branch_name_th'];
        }

        $this->db->where('f_branch_code', $branch_code);
        $this->db->where("DATE(f_datetime) BETWEEN '{$date_start}' AND '{$date_end}'");
        $this->db->order_by('f_id', 'DESC');
        $checklist = $this->db->get('tbl_qsc1_checklist')->row_array();

        $this->db->where('f_branch_code', $branch_code);
        $this->db->where("DATE(f_datetime) BETWEEN '{$date_start}' AND '{$date_end}'");
        $this->db->order_by('f_image_id', 'DESC');
        $images = $this->db->get('tbl_qsc1_image')->row_array();

        $this->db->where('f_branch_code', $branch_code);
        $this->db->where("DATE(f_datetime) BETWEEN '{$date_start}' AND '{$date_end}'");
        $this->db->order_by('f_sum_id', 'DESC');
        $summaries = $this->db->get('tbl_sum_qsc1')->result_array();

        $total_days = count($summaries);
        $sum_score = 0;
        $sum_total = 0;
        $sum_percentage = 0;

        foreach ($summaries as $row) {
            $sum_score += $row['f_qsc1_sum'] ?? 0;
            $sum_total += $row['f_qsc1_total'] ?? 0;
            $sum_percentage += $row['f_qsc1_percentage'] ?? 0;
        }

        $avg_score = $total_days ? round($sum_score / $total_days, 2) : 0;
        $avg_total = $total_days ? round($sum_total / $total_days, 2) : 0;
        $avg_percentage = $total_days ? round($sum_percentage / $total_days, 2) : 0;

        $spreadsheet = new Spreadsheet();
        $spreadsheet->getDefaultStyle()->getFont()->setName('TH Sarabun New')->setSize(14);
        $sheet = $spreadsheet->getActiveSheet();

        $row = 1;
        $sheet->setCellValue("B{$row}", 'สรุปรายงาน Area Service Checklist');
        $row++;
        $sheet->setCellValue("B{$row}", 'ชื่อสาขา:');
        $sheet->setCellValue("C{$row}", $branch_name);
        $row++;
        $sheet->setCellValue("B{$row}", 'ช่วงวันที่:');
        $sheet->setCellValue("C{$row}", "{$date_start} ถึง {$date_end}");
        $row += 2;

        $sheet->setCellValue("B{$row}", 'รวมคะแนนเฉลี่ย');
        $sheet->setCellValue("C{$row}", $avg_score);
        $row++;
        $sheet->setCellValue("B{$row}", 'คะแนนเต็มเฉลี่ย');
        $sheet->setCellValue("C{$row}", $avg_total);
        $row++;
        $sheet->setCellValue("B{$row}", 'เปอร์เซ็นต์เฉลี่ย');
        $sheet->setCellValue("C{$row}", $avg_percentage . '%');

        $filename = 'QSC_Export_' . $branch_code . '_' . $date_start . '_to_' . $date_end . '.xlsx';

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header("Content-Disposition: attachment; filename=\"$filename\"");
        header('Cache-Control: max-age=0');

        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }
	
}