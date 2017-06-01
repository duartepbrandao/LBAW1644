<?php
include_once('../../config/init.php');
include_once($BASE_DIR . 'database/admin.php');

$userID = $_POST['userID'];
$adminID = $_SESSION['ID'];
$dias= $_POST['dias'];
$date = new DateTime();
$date->add(new DateInterval('P'.$dias.'D'));
//echo $date->format('Y-m-d') . "\n";
$motivo = $_POST['motivo'];
try {
    if (banUser($userID, $adminID, $date, $motivo)) {
        http_response_code(200);
    } else {
        http_response_code(400);
    }
} catch (PDOException $e) {
    //http_response_code(400);
    echo $e->getMessage();
}