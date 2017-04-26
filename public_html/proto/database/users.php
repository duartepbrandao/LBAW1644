<?php
  
  function createUser($realname, $email, $password) {
    global $conn;
    $stmt = $conn->prepare("INSERT INTO utilizador (nome,email,password) VALUES (?, ?, ?)");
    $stmt->execute(array($realname, $email, sha1($password)));
  }

  function isLoginCorrect($email, $password) {
    global $conn;
    $stmt = $conn->prepare("SELECT * 
                            FROM utilizador 
                            WHERE email = ? AND password = ?");
    $stmt->execute(array($email, sha1($password)));
    return $stmt->fetch() == true;
  }
?>
