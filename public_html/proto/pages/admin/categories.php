<?php
    include_once('../../config/init.php');
	
	$categories = getCategories();		
	$smarty->assign('categories', $categories);
	
	
    $smarty->assign('page', 'categories');
    $smarty->display('admin/categories.tpl');
?>
