<?php
include_once('../../config/init.php');
include_once($BASE_DIR . 'database/users.php');

if (!$_POST['email'] || !$_POST['password']) {
    $_SESSION['error_messages'][] = 'Invalid login';
    $_SESSION['form_values'] = $_POST;
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

$email = strtolower(strip_tags($_POST['email']));
$password = $_POST['password'];

$userData = login($email, $password);
$banned = isBanned($userData['id_utilizador']);
if (!$banned) {
    if ($userData) {
        $_SESSION['ID'] = $userData['id_utilizador'];
        $_SESSION['username'] = $userData['nome'];
        $_SESSION['role'] = getUserRole($userData['id_utilizador']);
        $_SESSION['success_messages'][] = 'Login successful';
        header('Location: ' . $BASE_URL . 'pages/requests/dashboard.php');
    } else {
        $_SESSION['error_messages'][] = 'Login failed';
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    }
} else {

    $_SESSION['error_messages'][] = 'You are banned until ' . $banned['data_fim'] . ". Motivo: ". $banned['descricao'];
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
?>
