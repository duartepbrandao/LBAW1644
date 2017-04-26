<?php

  
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


?>