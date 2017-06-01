{include file='common/header.tpl'}

        <!-- Body Content -->
        <div id="wrapper">

            {include file='common/navigation.tpl'}

            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>Perfil de {$user.nome}</h1>
                            <hr class="divider">

                            <div class="col-lg-2">
                                <img class="img-thumbnail" src="{$BASE_URL}images/users/{$user.foto}" alt="">
                            </div>
                            <div class="col-lg-6">
                                <ul>
                                    <li><b>Nome:</b> {$user.nome}</li>
                                    <li><b>Estatuto:</b> {$user.estatuto}</li>
                                    <li><b>Email:</b> {$user.email}</li>
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