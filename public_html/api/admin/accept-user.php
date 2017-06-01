<?php

include_once('../../config/init.php');
include_once($BASE_DIR . 'database/admin.php');

$userID = $_POST['userID'];
$role = $_POST['role'];

switch ($role) {
    case 1:
        if (addOperador($userID, 'operador')) {
            http_response_code(200);
        } else {
            http_response_code(400);
        }
        break;
    case 2:
        if (addGestor($userID, 'gestor')) {
            http_response_code(200);
        } else {
            http_response_code(400);
        }
        break;
    case 3:
        if (addAdmin($userID, 'administrador')) {
            http_response_code(200);
        } else {
            http_response_code(400);
        }
        break;
    case 4:
        if (setUserRole($userID, 'aluno')) {
            http_response_code(200);
        } else {
            http_response_code(400);
        }
        break;
    case 5:
        if (setUserRole($userID, 'funcionário')) {
            http_response_code(200);
        } else {
            http_response_code(400);
        }
        break;
    case 6:
        if (setUserRole($userID, 'docente')) {
            http_response_code(200);
        } else {
            http_response_code(400);
        }
        break;
    default:
        http_response_code(400);
        break;
}