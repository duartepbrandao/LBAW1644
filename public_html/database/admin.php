<?php

//add

function addNewCategory($nomeCategoria, $idAdmin){
    global $conn;
    $conn->beginTransaction();
    $stmt1 = $conn->prepare("INSERT INTO categoria (nome_categoria) VALUES (?);");
    $result1 = $stmt1->execute(array($nomeCategoria));
    if ($result1){
        $stmt2 = $conn->prepare("INSERT INTO categoria_log (data,id_categoria, id_admin) VALUES (NOW(),lastval(),?);");
        $result2 = $stmt2->execute(array($idAdmin));
        if ($result2){
            $conn->commit();
        }else{
            $conn->rollBack();
        }
    }
    return ($result1 && $result2);
}

//GETS
  function getNewUsers() {
    global $conn;
    $stmt = $conn->prepare("SELECT utilizador.id_utilizador,
    utilizador.nome,
    utilizador.email
   FROM utilizador
  WHERE utilizador.estatuto = 'novo_utilizador'::contas;
                            ");
    $stmt->execute();
    return $stmt->fetchAll();
  }

   function getCategories() {
    global $conn;
    $stmt = $conn->prepare("SELECT * FROM categoria;");
    $stmt->execute();
    return $stmt->fetchAll();
  }

  function getUsers(){
      global $conn;
      $stmt = $conn->prepare("SELECT id_utilizador, nome,email,foto,estatuto FROM utilizador;");
      $stmt->execute();
      return $stmt->fetchAll();
  }

function deleteUser($userID){
    global $conn;
    $stmt = $conn->prepare("DELETE FROM utilizador WHERE id_utilizador = ? and estatuto = 'novo_utilizador'::contas RETURNING foto;");
    $stmt->execute(array($userID));
    return $stmt->fetchAll();
}
?>