<?php
    include_once('../../config/init.php');
    $smarty->assign('page', 'pending-requests');
    $smarty->display('requests/pending-requests.tpl');
?>
