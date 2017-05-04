<?php

function createUser($realname, $email, $password)
{
    global $conn;
    $stmt = $conn->prepare("INSERT INTO utilizador (nome,email,password) VALUES (?, ?, ?)");
    $stmt->execute(array($realname, $email, sha1($password)));
}

function login($email, $password)
{
    global $conn;
    $stmt = $conn->prepare("SELECT id_utilizador, nome,email,foto,estatuto
                            FROM utilizador 
                            WHERE email = ? AND password = ?");
    $stmt->execute(array($email, sha1($password)));

    return $stmt->fetch();
}

function getUser($userID){
    global $conn;
    $stmt = $conn->prepare("SELECT id_utilizador, nome,email,foto,estatuto
                            FROM utilizador 
                            WHERE id_utilizador = ?");
    $stmt->execute(array($userID));

    return $stmt->fetch();
}

function getUserRole($userID)
{
    $role = 0;
    global $conn;
    $stmt = $conn->prepare("SELECT * 
                            FROM operador 
                            WHERE id_utilizador = ?");
    $stmt->execute(array($userID));
    if ($stmt->fetch() == true) {
        $role++;
        $stmt = $conn->prepare("SELECT * FROM gestor WHERE id_utilizador =?");
        $stmt->execute(array($userID));

        if ($stmt->fetch() == true) {
            $role++;
            $stmt = $conn->prepare("SELECT * FROM administrador WHERE id_utilizador =?");
            $stmt->execute(array($userID));

            if ($stmt->fetch() == true) {
                $role++;
            }
        }
    }
    return $role;
    }

?>
