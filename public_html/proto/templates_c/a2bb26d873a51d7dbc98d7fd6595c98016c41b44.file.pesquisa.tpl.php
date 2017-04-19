<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 19:24:23
         compiled from "/var/www/LBAW1644/public_html/proto/templates/pesquisa.tpl" */ ?>
<?php /*%%SmartyHeaderCode:107869346758f79d473cacf2-63522618%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a2bb26d873a51d7dbc98d7fd6595c98016c41b44' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/pesquisa.tpl',
      1 => 1492617182,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '107869346758f79d473cacf2-63522618',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f79d473ce2d6_21055656',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f79d473ce2d6_21055656')) {function content_58f79d473ce2d6_21055656($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


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
                                <a href="item.html">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="item.html">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="item.html">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="item.html">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="item.html">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="item.html">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="item.html">
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
