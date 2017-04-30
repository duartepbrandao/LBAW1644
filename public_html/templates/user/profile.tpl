{include file='common/header.tpl'}

        <!-- Body Content -->
        <div id="wrapper">

            {include file='common/navigation.tpl'}

            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Página de perfil
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Perfil de Diogo</h3>
                            <hr class="divider">

                            <div class="col-lg-2">
                                <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                            </div>
                            <div class="col-lg-6">
                                <ul>
                                    <li><b>Nome:</b> Diogo Luis Silva</li>
                                    <li><b>ID:</b> 201405742</li>
                                    <li><b>Estatuto:</b> Estudante</li>
                                    <li><b>Email:</b> up201405742@fe.up.pt</li>
                                <ul>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Items alugados</h3>
                            <hr class="divider">

                             <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Items requisitados</h3>
                            <hr class="divider">

                            <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        {include file='common/scripts.tpl'}

        <!-- Custom Scripts -->
        <script>
            $(document).ready(function(){
                $('#newUsers').dataTable();
            });
        </script>

{include file='common/footer.tpl'}