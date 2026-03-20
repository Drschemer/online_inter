<?php
$info = array(
    'host' => 'localhost',
    'user' => 'qscmanager',
    'password' => 'HiNara@123',
    'dbname' => 'nara_online'
);
$conn = mysqli_connect($info['host'], $info['user'], $info['password'], $info['dbname']) or die('Error connection database!');
mysqli_set_charset($conn, 'utf8');

$json = array();
$sql = "SELECT * FROM tbl_training_course WHERE f_cert_code = '{$_GET['province_id']}'";
$query = mysqli_query($conn, $sql);



while($result = mysqli_fetch_assoc($query)) {    
    array_push($json, $result);
}
echo json_encode($json);