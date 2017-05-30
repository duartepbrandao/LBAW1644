<?php

include_once('../../config/init.php');
include_once($BASE_DIR . 'database/admin.php');

$userID = $_POST['userID'];
$role = $_POST['role'];

switch ($role) {
    case 1:
        setUserRole($userID, 'operador');
        http_response_code(200);
        break;
    case 2:
        setUserRole($userID, 'gestor');
        http_response_code(200);
        break;
    case 3:

        setUserRole($userID, 'administrador');
        http_response_code(200);
        break;
    case 4:
        setUserRole($userID, 'aluno');
        http_response_code(200);
        break;
    case 5:
        setUserRole($userID, 'funcionário');
        http_response_code(200);
        break;
    case 6:
        setUserRole($userID, 'docente');
        http_response_code(200);
        break;
    default:
        http_response_code(400);
        break;
}