<?php
include_once('../../config/init.php');
include_once($BASE_DIR .'database/inventory.php');

if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}

$smarty->assign('page', 'model');
$modelID = $_GET['id'];
$model = getModel($modelID);
$smarty->assign('model', $model);
$smarty->display('inventory/model.tpl');
?>
