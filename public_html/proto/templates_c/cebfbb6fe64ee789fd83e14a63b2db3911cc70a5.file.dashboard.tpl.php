<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 18:48:46
         compiled from "/var/www/LBAW1644/public_html/proto/templates/dashboard.tpl" */ ?>
<?php /*%%SmartyHeaderCode:189154176358f794ee274eb6-52719025%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cebfbb6fe64ee789fd83e14a63b2db3911cc70a5' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/dashboard.tpl',
      1 => 1492619661,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '189154176358f794ee274eb6-52719025',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f794ee2789c6_06956838',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f794ee2789c6_06956838')) {function content_58f794ee2789c6_06956838($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Body Content -->
        <div id="wrapper">

            <?php echo $_smarty_tpl->getSubTemplate ('common/navigation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Dashboard
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <p></p>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-1">
                        </div>
                        <div class="col-lg-4">
                            <div class="table-responsive">
                                <table id="listaRequests" class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Items Requisitados</th>
                                            <th>Fim</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-1">
                        </div>
                        <div class="col-lg-4">
                            <div class="table-responsive">
                                <table id="listaReservas" class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Reservas</th>
                                            <th>Data</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
            $(document).ready(function () {
                $('#newUsers').dataTable({
                    searching: false,
                    "bInfo": false
                });
            });
        </script>

<?php echo $_smarty_tpl->getSubTemplate ('common/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
