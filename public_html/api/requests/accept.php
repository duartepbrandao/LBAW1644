<?php
include_once('../../config/init.php');
include_once($BASE_DIR .'database/requests.php');

$requestID = $_POST['requestID'];
$managerID = $_SESSION['ID'];


try{
    if(acceptRequest($requestID,$managerID))
        http_response_code(200);
    else
        http_response_code(400);
}
catch (PDOException $e){
    http_response_code(400);
}
