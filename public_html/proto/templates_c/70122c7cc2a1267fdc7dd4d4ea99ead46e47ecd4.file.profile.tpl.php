<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 20:39:29
         compiled from "/var/www/LBAW1644/public_html/proto/templates/user/profile.tpl" */ ?>
<?php /*%%SmartyHeaderCode:183324404058f79c39831e65-71100252%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '70122c7cc2a1267fdc7dd4d4ea99ead46e47ecd4' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/user/profile.tpl',
      1 => 1492627161,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '183324404058f79c39831e65-71100252',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f79c398366f1_28564557',
  'variables' => 
  array (
    'BASE_URL' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f79c398366f1_28564557')) {function content_58f79c398366f1_28564557($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Body Content -->
        <div id="wrapper">

            <?php echo $_smarty_tpl->getSubTemplate ('common/navigation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Página de perfil
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Perfil de Diogo</h3>
                            <hr class="divider">

                            <div class="col-lg-2">
                                <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                            </div>
                            <div class="col-lg-6">
                                <ul>
                                    <li><b>Nome:</b> Diogo Luis Silva</li>
                                    <li><b>ID:</b> 201405742</li>
                                    <li><b>Estatuto:</b> Estudante</li>
                                    <li><b>Email:</b> up201405742@fe.up.pt</li>
                                <ul>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Items alugados</h3>
                            <hr class="divider">

                             <div class="col-lg-2">
                                <a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Items requisitados</h3>
                            <hr class="divider">

                            <div class="col-lg-2">
                                <a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <?php echo $_smarty_tpl->getSubTemplate ('common/scripts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Custom Scripts -->
        <script>
            $(document).ready(function(){
                $('#newUsers').dataTable();
            });
        </script>

<?php echo $_smarty_tpl->getSubTemplate ('common/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
