<?php
  include_once('../../config/init.php');
  include_once($BASE_DIR .'database/users.php');  

  if (!$_POST['real_name'] || !$_POST['email']|| !$_POST['password']|| !$_POST['confirm_password']) {
    $_SESSION['error_messages'][] = 'All fields are mandatory';
    $_SESSION['form_values'] = $_POST;
    header("Location: $BASE_URL" . 'pages/user/register.php');
    exit;
  }
  
  if($_POST['password'] != $_POST['confirm_password'])
  {
	$_SESSION['error_messages'][] = 'Passwords não coincidem';
    $_SESSION['form_values'] = $_POST;
    header("Location: $BASE_URL" . 'pages/user/register.php');
    exit;
  }
  
  $realname = strip_tags($_POST['real_name']);
  $email = strip_tags($_POST['email']);
  $password = $_POST['password'];

  try {
    createUser($realname, $email, $password);
   
  } catch (PDOException $e) {
  
    if (strpos($e->getMessage(), 'utilizador_email_key') !== false) {
      $_SESSION['error_messages'][] = 'Duplicate email';
      $_SESSION['field_errors']['email'] = 'Email já se encontra registado';
    }
    else $_SESSION['error_messages'][] = 'Error creating user';

    $_SESSION['form_values'] = $_POST;
    header("Location: $BASE_URL" . 'pages/user/register.php');
    exit;
  }
  $_SESSION['success_messages'][] = 'User registered successfully';  
  header("Location: $BASE_URL");
?>
