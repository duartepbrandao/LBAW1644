<?php

include_once('../../config/init.php');
include_once($BASE_DIR . 'database/admin.php');

$userID = $_POST['userID'];

try {
    $foto = deleteUser($userID);
    $_SESSION['error_messages'][] = $foto;
    if ($foto) {
        if (unlink($BASE_DIR . "images/users/$foto")) {
            http_response_code(200);
        } else
            http_response_code(400);
    }
} catch (PDOException $e) {
    http_response_code(400);
}
