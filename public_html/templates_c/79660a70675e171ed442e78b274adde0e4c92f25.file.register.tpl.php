<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 20:38:45
         compiled from "/var/www/LBAW1644/public_html/proto/templates/user/register.tpl" */ ?>
<?php /*%%SmartyHeaderCode:210536212658f79b6b9d1f54-14915111%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '79660a70675e171ed442e78b274adde0e4c92f25' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/user/register.tpl',
      1 => 1492627080,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '210536212658f79b6b9d1f54-14915111',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f79b6b9d57b6_84870459',
  'variables' => 
  array (
    'BASE_URL' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f79b6b9d57b6_84870459')) {function content_58f79b6b9d57b6_84870459($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


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
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/home.php">Home</a>
                        </li>
                        <!--<li><a href="#about">About</a>
                        </li>
                        <li><a href="#contact">Contact</a>
                        </li>-->
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/user/login.php">Login</a>
                        </li>
                        <li class="active"><a href="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
pages/user/register.php">Register</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper" class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="page-header">
                            Registo
                        </h1>
                    </div>
                </div>
                <div class="col-lg-6">
                    <form role="form">
                        <div class="form-group">
                            <label>Nome</label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label>Codigo/Numero Universitario</label>
                            <input type="number" class="form-control" placeholder="Ex: 201603192">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" placeholder="example@domain">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="password" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-default">Submeter</button>
                    </form>
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
