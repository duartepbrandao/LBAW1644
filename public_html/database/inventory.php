<?php
    function getModels() {
    global $conn;
    $stmt = $conn->prepare("SELECT modelo.quantidade,
   modelo.localizacao,
   modelo.id_categoria,
   modelo.foto, modelo.nome,
   modelo.descricao,
   modelo.id_modelo,
   categoria.nome_categoria
   FROM (modelo
   JOIN categoria ON (modelo.id_categoria = categoria.id_categoria));");
    $stmt->execute();
    return $stmt->fetchAll();
  }
?>