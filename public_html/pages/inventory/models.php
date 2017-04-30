<?php
    include_once('../../config/init.php');
	include_once($BASE_DIR .'database/inventory.php');
	
	$models = getModels();
	$smarty->assign('modelsList', $models);
	
    $smarty->assign('page', 'models');
    $smarty->display('inventory/models.tpl');
?>
