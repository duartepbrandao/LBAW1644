<?php
    include_once('../../config/init.php');	
	include_once($BASE_DIR .'database/requests.php');
	
	
    $smarty->assign('page', 'dashboard');
    $smarty->display('requests/dashboard.tpl');
?>
