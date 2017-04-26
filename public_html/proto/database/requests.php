<?php
  
  function getMovementsToday() {
    global $conn;
   
    $stmt->execute();
    return $stmt->fetchAll();
  }
  
?>