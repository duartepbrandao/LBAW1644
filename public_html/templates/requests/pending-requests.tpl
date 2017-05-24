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
                                Área de Gestor
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="col-lg-12">
                        <h3>Pedidos aguardando resposta</h3>
                        <hr class="divider">

                        <div class="table-responsive">
                            <table id="newUsers" class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Item</th>
                                        <th>Utilizador</th>
                                        <th>Data Inicio</th>
                                        <th>Data Fim</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>

                                {foreach $pending_requests as $pending}
                                    <tr data-requestid="{$pending.id_pedido}" >
                                        <td><a href="{$BASE_URL}pages/inventory/model.php?id={$pending.id_item}">{$pending.nome}</td>
                                        <td><a href="{$BASE_URL}pages/user/view_profile.php?id={$pending.id_utilizador}">{$pending.utilizador_nome}</td>
                                        <td>{$pending.data_inicio}</td>
                                        <td>{$pending.data_fim}</td>
                                        <td>
                                            <button type="button" class="btn btn-success accept-request">Aceitar</button>
                                            <button type="button" class="btn btn-danger reject-request">Rejeitar</button>
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
                $('#newUsers').dataTable();
            });
        </script>
<script src="{$BASE_URL}js/requests/pending-requests.js"></script>

{include file='common/footer.tpl'}