<?php /* Smarty version Smarty-3.1.15, created on 2017-04-19 18:47:44
         compiled from "/var/www/LBAW1644/public_html/proto/templates/common/navigation.tpl" */ ?>
<?php /*%%SmartyHeaderCode:178590657358f794b04b94e9-92095297%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1df7e9198d9aa2a31c90b22f97cdbcc25c88d075' => 
    array (
      0 => '/var/www/LBAW1644/public_html/proto/templates/common/navigation.tpl',
      1 => 1492617182,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '178590657358f794b04b94e9-92095297',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_58f794b04b9fd2_89010120',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f794b04b9fd2_89010120')) {function content_58f794b04b9fd2_89010120($_smarty_tpl) {?>        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id ="navbar" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="dashboard.html">FEUP INVENTORY MANAGEMENT</a>
            </div>

            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul id="notifications" class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul id="profilebar" class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>

            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav" id="sidebar">
                    <li>
                        <a href="dashboard.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard </a>
                    </li>
                    <li >
                        <a href="pesquisa.html"><i class="fa fa-fw fa-file"></i> Catálogo </a>
                    </li>
                    <li >
                        <a href="operador.html"><i class="fa fa-fw fa-file"></i> Operador </a>
                    </li>
                    <li >
                        <a href="gestor.html"><i class="fa fa-fw fa-file"></i> Gestor </a>
                    </li>
                    <li class="active">
                        <a href="admin.html" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Administrador <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse in">
                            <li>
                                <a href="categorias.html">Categorias</a>
                            </li>
                            <li>
                                <a href="listaUtilizadores.html">Utilizadores</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav><?php }} ?>
