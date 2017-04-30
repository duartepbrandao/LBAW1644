<?php
  include_once('../../config/init.php');
  include_once($BASE_DIR .'database/users.php');

  if (!$_POST['email'] || !$_POST['password']) {
    $_SESSION['error_messages'][] = 'Invalid login';
    $_SESSION['form_values'] = $_POST;
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
  }

  $email = $_POST['email'];
  $password = $_POST['password'];

  if (isLoginCorrect($email, $password)) {
	$_SESSION['username'] = $email;
    $_SESSION['success_messages'][] = 'Login successful';
  header('Location: ' . $BASE_URL . 'pages/requests/dashboard.php');
  } else {
    $_SESSION['error_messages'][] = 'Login failed';
  header('Location: ' . $_SERVER['HTTP_REFERER']);
  }
?>
