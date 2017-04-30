<?php /* Smarty version Smarty-3.1.15, created on 2017-04-20 09:42:22
         compiled from "/var/www/LBAW1644/public_html/proto/templates/home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:84195128358f7ae06efd394-94558050%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6a3df16d3a1a52d967fc76c5809eaa373c3ae20c' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/home.tpl',
      1 => 1492627664,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '84195128358f7ae06efd394-94558050',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f7ae06f039a6_78023310',
  'variables' => 
  array (
    'BASE_URL' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f7ae06f039a6_78023310')) {function content_58f7ae06f039a6_78023310($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


        <!-- Body Content -->
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" id="navbar" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/home.php">FEUP INVENTORY MANAGEMENT</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/home.php">Home</a>
                        </li>
                        <!--<li><a href="#about">About</a>
                        </li>
                        <li><a href="#contact">Contact</a>
                        </li>-->
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/user/login.php">Login</a>
                        </li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/user/register.php">Register</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="jumbotron">
                        <h1>Bem Vindo!</h1>
                        <p>
                            Este website foi feito para a reserva de inventário da FEUP por parte de alunos, docentes e funcionários da mesma.
                        </p>
                        <a href="#" class="btn btn-primary btn-lg" role="button">Mais sobre o serviço »</a>
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
