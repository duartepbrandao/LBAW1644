<?php
include_once('../../config/init.php');
include_once($BASE_DIR . 'database/admin.php');


if ($_SESSION['username'] == NULL) {
    header('Location: ' . $BASE_URL);
    exit;
}

if($_SESSION['role']<3){
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}
$newUsers = getNewUsers();
$smarty->assign('newUsers', $newUsers);


$smarty->assign('page', 'new-users');
$smarty->display('admin/new-users.tpl');
?>
