<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 20:11:25
         compiled from "/var/www/LBAW1644/public_html/proto/templates/admin/categories.tpl" */ ?>
<?php /*%%SmartyHeaderCode:122840979258f7a817c2d250-59978080%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab59020552c45b844da07141a1bf3c7827df2527' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/admin/categories.tpl',
      1 => 1492625484,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '122840979258f7a817c2d250-59978080',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f7a817c34e41_07124162',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f7a817c34e41_07124162')) {function content_58f7a817c34e41_07124162($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Body Content -->
        <div id="wrapper">

            <?php echo $_smarty_tpl->getSubTemplate ('common/navigation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Área de Administração
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="col-lg-12">
                        <h3>Categorias</h3>
                        <hr class="divider">

                        <div class="table-responsive">
                            <table id="newUsers" class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th></th>
                                        <th>
                                        <button type="button" class="pull-right btn btn-default">Nova Categoria</button>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Material Informático</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Equipamento Vídeo</td>
                                    <td></td>
                                    <td>
                                        <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>Material Didático</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Equipamento Projeção</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Cabos</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
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
