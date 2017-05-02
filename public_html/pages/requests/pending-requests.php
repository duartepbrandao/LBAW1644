<?php
include_once('../../config/init.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}
$smarty->assign('page', 'pending-requests');
$smarty->display('requests/pending-requests.tpl');
?>
