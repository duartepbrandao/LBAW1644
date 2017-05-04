<?php
    include_once('../../config/init.php');	
	include_once($BASE_DIR .'database/requests.php');

	if($_SESSION['username'] == NULL){
        header('Location: ' . $BASE_URL);
        exit;
}


    $requests = getRequestsByID($_SESSION['ID']);
    $reservations = getReservedByID($_SESSION['ID']);
	$smarty->assign('requests',$requests);
	$smarty->assign('reservations',$reservations);
    $smarty->assign('page', 'dashboard');
    $smarty->display('requests/dashboard.tpl');
?>
