<?php
include_once('../../config/init.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}
$smarty->display('user/profile.tpl');
?>
