<?php

include_once('../../config/init.php');
include_once($BASE_DIR . 'database/admin.php');

$userID = $_POST['userID'];


try {
    
} catch (PDOException $e) {
    http_response_code(400);
}
