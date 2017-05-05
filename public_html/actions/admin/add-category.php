<?php
include_once('../../config/init.php');
include_once($BASE_DIR .'database/admin.php');

if (!$_POST['nome-categoria'] || !$_POST['id-admin']|| $_POST['id-admin'] != $_SESSION['ID']) {
    $_SESSION['error_messages'][] = 'Invalid request';
    $_SESSION['form_values'] = $_POST;
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

$nomeCategoria = strip_tags($_POST['nome-categoria']);
$idAdmin = strip_tags($_POST['id-admin']);

$added = addNewCategory($nomeCategoria,$idAdmin);

if ($added){
    $_SESSION['success_messages'][] = 'Category added successfully';
    header('Location: ' . $BASE_URL . 'pages/admin/categories.php');
}else{
    $_SESSION['error_messages'][] = 'Failed to add Category';
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}