<?php
  
  function getMovementsToday() {
    global $conn;
   
    $stmt->execute();
    return $stmt->fetchAll();
  }
  
  function getRequestsByID($userID) {
    global $conn;
	
   $stmt = $conn->prepare("SELECT item.id_item,
    item.id_modelo,
    modelo.nome AS nome_modelo,
    pedido.id_utilizador,
    utilizador.nome,
    pedido.data_fim,
    pedido.data_inicio
  FROM (((pedido
     JOIN utilizador ON ((pedido.id_utilizador = utilizador.id_utilizador)))
     JOIN item ON ((pedido.id_item = item.id_item)))
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE (pedido.estado_pedido = 'emCurso'::estadopedido OR pedido.estado_pedido = 'atrasado'::estadopedido) AND pedido.id_utilizador = ? ;");
    $stmt->execute(array($userID));
    return $stmt->fetchAll();
  }
  function getReservedByID($userID) {
    global $conn;
    $stmt = $conn->prepare(" SELECT item.id_item,
    item.id_modelo,
    modelo.nome,
    utilizador.nome AS nome_utilizador,
    pedido.data_fim,
    pedido.data_inicio
   FROM (((pedido
     JOIN utilizador ON ((pedido.id_utilizador = utilizador.id_utilizador)))
     JOIN item ON ((pedido.id_item = item.id_item)))
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE ((pedido.data_inicio > now()) AND (pedido.estado_pedido = 'aceite'::estadopedido) AND pedido.id_utilizador = ? );");
    $stmt->execute(array($userID));
    return $stmt->fetchAll();
  }
?>