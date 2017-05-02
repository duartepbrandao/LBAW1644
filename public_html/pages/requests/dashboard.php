<?php
    include_once('../../config/init.php');	
	include_once($BASE_DIR .'database/requests.php');

	if($_SESSION['username'] == NULL){
        header('Location: ' . $BASE_URL);
        exit;
}

    $smarty->assign('page', 'dashboard');
    $smarty->display('requests/dashboard.tpl');
?>
