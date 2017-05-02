<?php
include_once('../../config/init.php');
include_once($BASE_DIR .'database/admin.php');


if($_SESSION['username'] == NULL){
    header('Location: ' . $BASE_URL);
    exit;
}

$categories = getCategories();
$smarty->assign('categories', $categories);


$smarty->assign('page', 'categories');
$smarty->display('admin/categories.tpl');
?>
