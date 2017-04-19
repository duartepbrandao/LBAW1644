{include file='common/header.tpl'}

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
                        <li><a href="login.html">Login</a>
                        </li>
                        <li class="active"><a href="register.html">Register</a>
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

        {include file='common/scripts.tpl'}

        <!-- Custom Scripts -->
        <script>
            $(document).ready(function () {
                $('#newUsers').dataTable();
            });
        </script>

{include file='common/footer.tpl'}