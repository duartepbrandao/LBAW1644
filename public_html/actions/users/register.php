<?php
include_once('../../config/init.php');
include_once($BASE_DIR . 'database/users.php');

if (!$_POST['real_name'] || !$_POST['email'] || !$_POST['password'] || !$_POST['confirm_password'] ) {
    $_SESSION['error_messages'][] = 'All fields are mandatory';
    $_SESSION['form_values'] = $_POST;
    header("Location: $BASE_URL" . 'pages/user/register.php');
    exit;
}

if ($_POST['password'] != $_POST['confirm_password']) {
    $_SESSION['error_messages'][] = 'Passwords não coincidem';
    $_SESSION['form_values'] = $_POST;
    header("Location: $BASE_URL" . 'pages/user/register.php');
    exit;
}

$realname = strip_tags($_POST['real_name']);
$email = strtolower(strip_tags($_POST['email']));
$password = $_POST['password'];

$target_dir = $BASE_DIR . "images/users/";
$target_file = $target_dir . basename($_FILES["pic"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if (isset($_POST["submit"])) {
    $check = getimagesize($_FILES["pic"]["tmp_name"]);
    if ($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        $_SESSION['error_messages'][] = "File is not an image.";
        $uploadOk = 0;
    }
}
// Check file size
if ($_FILES["pic"]["size"] > 500000) {
    $_SESSION['error_messages'][] = "Sorry, your file is too large.";
    $uploadOk = 0;
}
// Allow certain file formats
if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
) {
    $_SESSION['error_messages'][] = "Sorry, only JPG, JPEG, PNG  files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    $_SESSION['error_messages'][] = "Sorry, your file was not uploaded.";
    header("Location: $BASE_URL" . 'pages/user/register.php');
    exit;
}

try {
    $id = createUser($realname, $email, $password);

    move_uploaded_file($_FILES["pic"]["tmp_name"], $BASE_DIR."images/users/".$id.'.'.$imageFileType);
    chmod($BASE_DIR."images/users/".$id.'.'.$imageFileType, 0644);

} catch (PDOException $e) {

    if (strpos($e->getMessage(), 'utilizador_email_key') !== false) {
        $_SESSION['error_messages'][] = 'Duplicate email';
        $_SESSION['field_errors']['email'] = 'Email já se encontra registado';
    } else $_SESSION['error_messages'][] = 'Error creating user';

    $_SESSION['form_values'] = $_POST;
    header("Location: $BASE_URL" . 'pages/user/register.php');
    exit;
}
$_SESSION['success_messages'][] = 'User registered successfully';
header("Location: $BASE_URL");
?>
