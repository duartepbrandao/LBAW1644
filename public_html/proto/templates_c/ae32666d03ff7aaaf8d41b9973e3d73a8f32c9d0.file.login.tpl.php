<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 18:58:37
         compiled from "/var/www/LBAW1644/public_html/proto/templates/user/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11605716158f7973d7615c7-18775398%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ae32666d03ff7aaaf8d41b9973e3d73a8f32c9d0' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/user/login.tpl',
      1 => 1492621098,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11605716158f7973d7615c7-18775398',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BASE_URL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f7973d76ac90_34704896',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f7973d76ac90_34704896')) {function content_58f7973d76ac90_34704896($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('common/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


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
                    <a class="navbar-brand" href="home.html">FEUP INVENTORY MANAGEMENT</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="home.html">Home</a>
                        </li>
                        <!--<li><a href="#about">About</a>
                        </li>
                        <li><a href="#contact">Contact</a>
                        </li>-->
                        <li class="active"><a href="login.html">Login</a>
                        </li>
                        <li><a href="register.html">Register</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper" class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="page-header">
                            Login
                        </h1>
                    </div>
                </div>
                <div class="col-lg-6">

                    <form action="<?php echo $_smarty_tpl->tpl_vars['BASE_URL']->value;?>
actions/users/login.php" method="post">
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" placeholder="example@domain" name="email">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password">
                        </div>
                        <button type="submit" class="btn btn-default">Login</button>
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
