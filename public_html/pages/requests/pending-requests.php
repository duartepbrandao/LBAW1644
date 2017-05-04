<?php
include_once('../../config/init.php');
include_once($BASE_DIR . 'database/requests.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}

if($_SESSION['role']<2){
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

$pending_requests = getPendingRequests();
$smarty->assign('pending_requests', $pending_requests);
$smarty->assign('page', 'pending-requests');
$smarty->display('requests/pending-requests.tpl');
?>
