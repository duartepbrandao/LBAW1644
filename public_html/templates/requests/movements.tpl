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
                                Área de Operação
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class= "row">
                        <div class = "col-lg-12">
                            <div>
                                <button type="button" class="btn btn-primary btn-lg">Devolver Item</button>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="col-lg-12">
                        <h3>Movimentos</h3>
                        <hr class="divider">

                        <div class="table-responsive">
                            <table id="items" class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Item</th>
                                        <th>Utilizador</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>

                                {foreach $movements as $movement}
                                    <tr>
                                        <td><a href="{$BASE_URL}pages/inventory/model.php?id={$movement.id_modelo}">{$movement.nome}</a>
                                        </td>
                                        <td><a href="{$BASE_URL}pages/user/view_profile.php?id={$movement.id_utilizador}">{$movement.utilizador_nome}</a>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Acções</button>
                                        </td>
                                    </tr>
                                {/foreach}

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        {include file='common/scripts.tpl'}

        <!-- Custom Scripts -->
        <script>
            $(document).ready(function () {
                $('#items').dataTable();
            });
        </script>

{include file='common/footer.tpl'}