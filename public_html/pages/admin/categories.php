<?php
    include_once('../../config/init.php');
	include_once($BASE_DIR .'database/admin.php');
	
	$categories = getCategories();		
	$smarty->assign('categories', $categories);
	
	
    $smarty->assign('page', 'categories');
    $smarty->display('admin/categories.tpl');
?>
