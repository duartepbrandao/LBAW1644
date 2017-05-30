<?php
include_once('../../config/init.php');
include_once($BASE_DIR . 'database/admin.php');

$userID = $_POST['userID'];
$adminID = $_SESSION['ID'];
$dataFim = $_POST['dataFim'];
$motivo = $_POST['motivo'];
try {
    if (banUser($userID, $adminID, $dataFim, $motivo)) {
        http_response_code(200);
    } else {
        http_response_code(400);
    }
} catch (PDOException $e) {
    http_response_code(400);
}
