<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 20:34:11
         compiled from "/var/www/LBAW1644/public_html/proto/templates/inventory/models.tpl" */ ?>
<?php /*%%SmartyHeaderCode:212158325458f7a185431c49-48181606%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '081d1e11199dae1dee96ce52925a3b82b70949cc' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/inventory/models.tpl',
      1 => 1492626848,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '212158325458f7a185431c49-48181606',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f7a185435e36_64826277',
  'variables' => 
  array (
    'BASE_URL' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f7a185435e36_64826277')) {function content_58f7a185435e36_64826277($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Body Content -->
        <div id="wrapper">

            <?php echo $_smarty_tpl->getSubTemplate ('common/navigation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Pesquisa de itens
                            </h1>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        <label>Item</label>
                                        <input class="form-control">
                                    </div>
                                    <div class="col-lg-2">
                                        <label>Categoria</label>
                                        <select class="form-control">
                                            <option>Multimedia</option>
                                            <option>Eletronica</option>
                                            <option>Livros</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-default">Submit Button</button>
                            </form>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Resultados</h3>
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
                            <div class="col-lg-2">
                                <a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
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
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <?php echo $_smarty_tpl->getSubTemplate ('common/scripts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Custom Scripts -->
        <script>
            $(document).ready(function () {
                $('#newUsers').dataTable();
            });
        </script>

<?php echo $_smarty_tpl->getSubTemplate ('common/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>