<?php

function getRequestsByID($userID)
{
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
  WHERE (pedido.estado_pedido = 'emCurso'::ESTADOPEDIDO OR pedido.estado_pedido = 'atrasado'::ESTADOPEDIDO) AND pedido.id_utilizador = ? ;");
    $stmt->execute(array($userID));
    return $stmt->fetchAll();
}

function getReservedByID($userID)
{
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
  WHERE ((pedido.data_inicio > now()) AND (pedido.estado_pedido = 'aceite'::ESTADOPEDIDO) AND pedido.id_utilizador = ? );");
    $stmt->execute(array($userID));
    return $stmt->fetchAll();
}

function getMovementsToday()
{
    global $conn;
    $stmt = $conn->prepare(" SELECT utilizador.id_utilizador,
    utilizador.nome AS utilizador_nome,
    item.id_item,
    item.id_modelo,
    modelo.nome,
    pedido.estado_pedido,
    pedido.data_fim,
    pedido.data_inicio
   FROM pedido
     JOIN utilizador ON pedido.id_utilizador = utilizador.id_utilizador
     JOIN item ON pedido.id_item = item.id_item
     JOIN modelo ON item.id_modelo = modelo.id_modelo
  WHERE (pedido.data_inicio < CURRENT_DATE + 1) AND (pedido.estado_pedido = 'aceite'::ESTADOPEDIDO);");
    $stmt->execute();
    return $stmt->fetchAll();
}

function getPendingRequests()
{
    global $conn;
    $stmt = $conn->prepare(" SELECT utilizador.id_utilizador,
    utilizador.nome AS utilizador_nome,
    item.id_item,
    item.id_modelo,
    modelo.nome,
    pedido.estado_pedido,
    pedido.data_fim,
    pedido.data_inicio,
    pedido.id_pedido,
    categoria.nome_categoria
   FROM pedido
     JOIN utilizador ON pedido.id_utilizador = utilizador.id_utilizador
     JOIN item ON pedido.id_item = item.id_item
     JOIN modelo ON item.id_modelo = modelo.id_modelo
     JOIN categoria on modelo.id_categoria = categoria.id_categoria
     WHERE pedido.data_inicio >= CURRENT_DATE AND pedido.estado_pedido = 'aguardaResposta'::ESTADOPEDIDO;");
    $stmt->execute();
    return $stmt->fetchAll();
}

function acceptRequest($requestID, $managerID)
{
    global $conn;
    $conn->beginTransaction();
    $stmt1 = $conn->prepare(" UPDATE  pedido SET estado_pedido='aceite'::estadopedido WHERE id_pedido = ?;");
    $result1 = $stmt1->execute(array($requestID));
    if($result1) {
        $stmt2 = $conn->prepare(" INSERT INTO pedido_log (data, id_pedido, id_gestor,estado) VALUES (NOW(),?,?,'aceite'::estadopedido);");
        $result2 = $stmt2->execute(array($requestID, $managerID));
        if($result2)
            $conn->commit();
        else
            $conn->rollBack();
    }
    return ($result1 && $result2);
}

function rejectRequest($requestID, $managerID)
{
    global $conn;
    $conn->beginTransaction();
    $stmt1 = $conn->prepare(" UPDATE  pedido SET estado_pedido='rejeitado'::estadopedido WHERE id_pedido = ?;");
    $result1 = $stmt1->execute(array($requestID));
    if($result1) {
        $stmt2 = $conn->prepare(" INSERT INTO pedido_log (data, id_pedido, id_gestor,estado) VALUES (NOW(),?,?,'rejeitado'::estadopedido);");
        $result2 = $stmt2->execute(array($requestID, $managerID));
        if($result2)
            $conn->commit();
        else
            $conn->rollBack();
    }
    return ($result1 && $result2);
}

?>