        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id ="navbar" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{$BASE_URL}pages/requests/dashboard.php">FEUP INVENTORY MANAGEMENT</a>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> {$USERNAME} <b class="caret"></b></a>
                    <ul id="profilebar" class="dropdown-menu">
                        <li>
                            <a href="{$BASE_URL}pages/user/profile.php"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="{$BASE_URL}actions/users/logout.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>

            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav" id="sidebar">

                    <li {if $page eq "dashboard"} class="active" {/if}>
                        <a href="{$BASE_URL}pages/requests/dashboard.php"><i class="fa fa-fw fa-dashboard"></i> Dashboard </a>
                    </li>
                    <li {if $page eq "models"} class="active" {/if}>
                        <a href="{$BASE_URL}pages/inventory/models.php"><i class="fa fa-fw fa-file"></i> Catálogo </a>
                    </li>

                    {if $ROLE > 0}
                    <li {if $page eq "movements"} class="active" {/if}>
                        <a href="{$BASE_URL}pages/requests/movements.php"><i class="fa fa-fw fa-file"></i> Operador </a>
                    </li>
                    {/if}

                    {if $ROLE > 1}
                    <li {if $page eq "pending-requests"} class="active" {/if}>
                        <a href="{$BASE_URL}pages/requests/pending-requests.php"><i class="fa fa-fw fa-file"></i> Gestor </a>
                    </li>
                    {/if}

                    {if $ROLE > 2}
                    <li {if $page eq "new-users"} class="active" {/if}>
                        <a href="{$BASE_URL}pages/admin/new-users.php" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Administrador <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse in">
                            <li {if $page eq "categories"} class="active" {/if}>
                                <a href="{$BASE_URL}pages/admin/categories.php">Categorias</a>
                            </li>
                            <li {if $page eq "users"} class="active" {/if}>
                                <a href="{$BASE_URL}pages/admin/users.php">Utilizadores</a>
                            </li>
                        </ul>
                    </li>
                    {/if}
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>