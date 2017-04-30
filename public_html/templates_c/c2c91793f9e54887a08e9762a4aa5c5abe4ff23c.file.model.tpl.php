<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 20:42:53
         compiled from "/var/www/LBAW1644/public_html/proto/templates/inventory/model.tpl" */ ?>
<?php /*%%SmartyHeaderCode:25207365058f7a1cf7768f4-50211893%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c2c91793f9e54887a08e9762a4aa5c5abe4ff23c' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/inventory/model.tpl',
      1 => 1492627371,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25207365058f7a1cf7768f4-50211893',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f7a1cf779e73_47904544',
  'variables' => 
  array (
    'BASE_URL' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f7a1cf779e73_47904544')) {function content_58f7a1cf779e73_47904544($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Body Content -->
        <div id="wrapper">

            <?php echo $_smarty_tpl->getSubTemplate ('common/navigation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Camara Nikon D3300
                                <small>Equipamento Vídeo</small>
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class= "col-lg-12">
                            <p></p>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-1">
                        </div>
                        <div class="col-lg-4">
                            <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
images/item1.jpg" class="img-responsive img-thumbnail" alt="Nikon">
                        </div>
                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <p>
                                        <b>Quantidade disponível:</b> 3
                                    </p>
                                    <br>
                                    <p>
                                        <b>
                                            Descrição:
                                        </b>
                                    </p>
                                    <p>
                                        Maquina fotografica Nikon D330
                                    </p>
                                    <p>
                                        <ul>
                                            <li>24.2 MP CMOS DX-format sensor</li>
                                            <li>5 frames per second continuous shooting</li>
                                            <li>11 AF points with 3D tracking</li>
                                            <li>ISO 100-12800 (expandable to 25600)</li>
                                            <li>1080 (60, 50, 30, 25, 24 fps) HD video (MPEG-4/H.264/MOV)</li>
                                        </ul>
                                    </p>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="button" class="btn btn-primary center">Reservar</button>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <?php echo $_smarty_tpl->getSubTemplate ('common/scripts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Custom Scripts -->
        <script>
        </script>

<?php echo $_smarty_tpl->getSubTemplate ('common/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
