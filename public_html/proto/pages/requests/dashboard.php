<?php
    include_once('../../config/init.php');
    $smarty->assign('page', 'dashboard');
    $smarty->display('requests/dashboard.tpl');
?>
