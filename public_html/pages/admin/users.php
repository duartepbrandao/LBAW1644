<?php
include_once('../../config/init.php');
include_once($BASE_DIR .'database/admin.php');

include_once($BASE_DIR .'database/users.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}

if($_SESSION['role']<3){
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

$users=getUsers();
foreach ($users as &$user){
    $role = getUserRole($user["id_utilizador"]);
    switch ($role){
        case 0:
            $user["role"]= "Utilizador";
            break;

        case 1:
            $user["role"]= "Operador";
            break;
        case 2:
            $user["role"]= "Gestor";
            break;
        case 3:
            $user["role"]= "Administrador";
            break;
    }
}
$smarty->assign('users',$users);

$smarty->assign('page', 'users');
$smarty->display('admin/users.tpl');
?>
