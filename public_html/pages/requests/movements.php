<?php
include_once('../../config/init.php');
include_once($BASE_DIR .'database/requests.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}
if($_SESSION['role']<1){
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

$movements = getMovementsToday();

$smarty->assign('page', 'movements');
$smarty->assign('movements', $movements);
$smarty->display('requests/movements.tpl');
?>
