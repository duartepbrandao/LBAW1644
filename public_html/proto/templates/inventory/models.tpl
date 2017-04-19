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
                                Pesquisa de itens
                            </h1>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        <label>Item</label>
                                        <input class="form-control">
                                    </div>
                                    <div class="col-lg-2">
                                        <label>Categoria</label>
                                        <select class="form-control">
                                            <option>Multimedia</option>
                                            <option>Eletronica</option>
                                            <option>Livros</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-default">Submit Button</button>
                            </form>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Resultados</h3>
                            <hr class="divider">

                            <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="{$BASE_URL}pages/inventory/model.php">
                                    <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
                                </a>
                                <div class="caption">
                                    <p>Item</p>
                                </div>
                            </div>
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