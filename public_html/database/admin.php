<?php

//add

function addNewCategory($nomeCategoria, $idAdmin)
{
    global $conn;
    $conn->beginTransaction();
    $stmt1 = $conn->prepare("INSERT INTO categoria (nome_categoria) VALUES (?);");
    $result1 = $stmt1->execute(array($nomeCategoria));
    if ($result1) {
        $stmt2 = $conn->prepare("INSERT INTO categoria_log (data,id_categoria, id_admin) VALUES (NOW(),lastval(),?);");
        $result2 = $stmt2->execute(array($idAdmin));
        if ($result2) {
            $conn->commit();
        } else {
            $conn->rollBack();
        }
    }
    return ($result1 && $result2);
}

//GETS
function getNewUsers()
{
    global $conn;
    $stmt = $conn->prepare("SELECT utilizador.id_utilizador,
    utilizador.nome,
    utilizador.email
   FROM utilizador
  WHERE utilizador.estatuto = 'novo_utilizador'::CONTAS;
                            ");
    $stmt->execute();
    return $stmt->fetchAll();
}

function getCategories()
{
    global $conn;
    $stmt = $conn->prepare("SELECT * FROM categoria;");
    $stmt->execute();
    return $stmt->fetchAll();
}

function getUsers()
{
    global $conn;
    $stmt = $conn->prepare("SELECT id_utilizador, nome,email,foto,estatuto FROM utilizador WHERE estatuto!='novo_utilizador'::contas;");
    $stmt->execute();
    return $stmt->fetchAll();
}

function deleteUser($userID)
{
    global $conn;
    $stmt = $conn->prepare("DELETE FROM utilizador WHERE id_utilizador = ? AND estatuto = 'novo_utilizador'::CONTAS RETURNING foto;");
    $stmt->execute(array($userID));
    return $stmt->fetchAll();
}

function banUser($userID, $adminID, $dataFim, $motivo)
{
    global $conn;
    $conn->beginTransaction();
    $stmt1 = $conn->prepare("INSERT INTO ban (id_utilizador,data_fim, id_admin) VALUES (?,?,?) RETURNING id_ban");
    $result1 = $stmt1->execute(array($userID,$dataFim->format('Y-m-d'), $adminID));
    $id = $stmt1->fetch()["id_ban"];

    if ($result1) {
        $stmt2 = $conn->prepare(" INSERT INTO ban_log (data, descricao, id_ban) VALUES (NOW(),?,?)");
        $result2 = $stmt2->execute(array($motivo, $id));
        if ($result2)
            $conn->commit();
        else
            $conn->rollBack();
    }
    return ($result1 && $result2);
}

function setUserRole($userID, $newRole)
{
    global $conn;
    $stmt = $conn->prepare("UPDATE utilizador SET estatuto=?::CONTAS WHERE id_utilizador=?;");
    return $stmt->execute(array($newRole, $userID));
}

function addOperador($userID, $newRole)
{
    global $conn;
    $conn->beginTransaction();
    $stmt = $conn->prepare("INSERT INTO operador (id_utilizador) VALUES (?)");
    $result1 = $stmt->execute(array($userID));
    if ($result1) {
        if (setUserRole($userID, $newRole)) {
            $conn->commit();
        } else {
            $conn->rollBack();
            return false;
        }
    }
    return $result1;
}

function addGestor($userID, $newRole)
{
    global $conn;
    $stmt = $conn->prepare("INSERT INTO gestor (id_utilizador) VALUES (?)");
    $result1 = $stmt->execute(array($userID));
    if ($result1) {
        if (setUserRole($userID, $newRole)) {
            $conn->commit();
        } else {
            $conn->rollBack();
            return false;
        }
    }
    return $result1;
}

function addAdmin($userID, $newRole)
{
    global $conn;
    $stmt = $conn->prepare("INSERT INTO administrador (id_utilizador) VALUES (?)");
    $result1 = $stmt->execute(array($userID));
    if ($result1) {
        if (setUserRole($userID, $newRole)) {
            $conn->commit();
        } else {
            $conn->rollBack();
            return false;
        }
    }
    return $result1;
}

?>