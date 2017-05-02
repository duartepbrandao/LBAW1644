<?php
include_once('../../config/init.php');


if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}

if($_SESSION['role']<3){
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}
$smarty->assign('page', 'users');
$smarty->display('admin/users.tpl');
?>
