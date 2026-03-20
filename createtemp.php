<?php
$info = array(
    'host' => 'localhost',
    'user' => 'qscmanager',
    'password' => 'HiNara@123',
    'dbname' => 'nara_online'
);
$conn = mysqli_connect($info['host'], $info['user'], $info['password'], $info['dbname']) or die('Error connection database!');
mysqli_set_charset($conn, 'utf8');

$temp0 = $_GET['province_id'];
$temp1 = str_replace('"',"'",$temp0);
$json = array();
$sql = "INSERT INTO tbl_temp (f_data) VALUES ('$temp0')";
$query = mysqli_query($conn, $sql);
echo $sql;


while($result = mysqli_fetch_assoc($query)) {    
    array_push($json, $result);
}
echo json_encode($json);