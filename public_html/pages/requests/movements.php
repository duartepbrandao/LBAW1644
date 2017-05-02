<?php
include_once('../../config/init.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}
$smarty->assign('page', 'movements');
$smarty->display('requests/movements.tpl');
?>
