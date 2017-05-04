<?php
include_once('../../config/init.php');
include_once($BASE_DIR .'database/users.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}
if($_SESSION['role']<1){
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

$userID = $_GET['id'];
$user = getUser($userID);
$smarty->assign('user',$user);
$smarty->display('user/view_profile.tpl');
?>
