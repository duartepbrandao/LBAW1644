<?php
    include_once('../../config/init.php');
  include_once($BASE_DIR .'database/admin.php');
	
	$newUsers = getNewUsers();		
	$smarty->assign('newUsers', $newUsers);
	
    $smarty->assign('page', 'new-users');
    $smarty->display('admin/new-users.tpl');
?>
