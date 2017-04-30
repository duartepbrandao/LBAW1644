<?php
    include_once('../../config/init.php');
    $smarty->assign('page', 'model');
	var modelID = $_GET['id'];
	getModel(modelID);
    $smarty->display('inventory/model.tpl');
?>
