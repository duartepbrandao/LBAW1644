<?php

function createUser($realname, $email, $password)
{
    global $conn;
    $stmt = $conn->prepare("INSERT INTO utilizador (nome,email,password) VALUES (?, ?, ?)");
    $stmt->execute(array($realname, $email, sha1($password)));
    return $conn->lastInsertId();
}

function login($email, $password)
{
    global $conn;
    $stmt = $conn->prepare("SELECT id_utilizador, nome,email,foto,estatuto
                            FROM utilizador 
                            WHERE email = ? AND password = ? AND estatuto != 'novo_utilizador'::contas");
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

function isBanned($userID){
    global $conn;
    $stmt = $conn->prepare("SELECT *
                            FROM ban JOIN ban_log ON ban.id_ban = ban_log.id_ban
                            WHERE id_utilizador = ? AND data_fim > now()");
    $stmt->execute(array($userID));
    return $stmt->fetch();
}

function setImage($id,$imageFileType){
    global $conn;
    $stmt = $conn->prepare("UPDATE utilizador SET foto=? WHERE id_utilizador=?;");
    $stmt->execute(array($id.'.'.$imageFileType,$id));
    return $stmt->fetch();
}
?>
