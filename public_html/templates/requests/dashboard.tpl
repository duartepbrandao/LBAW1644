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
                                Dashboard
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <p></p>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-1">
                        </div>
                        <div class="col-lg-4">
                            <div class="table-responsive">
                                <table id="listaRequests" class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Items Requisitados</th>
                                            <th>Fim</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    {foreach $requests as $request}
                                        <tr>
                                            <td >
                                                <a href="{$BASE_URL}pages/inventory/model.php?id={$request.id_modelo}">{$request.nome_modelo}</a>
                                            </td>
                                            <td >
                                                {$request.data_fim}
                                            </td>
                                        </tr>
                                    {/foreach}

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-1">
                        </div>
                        <div class="col-lg-4">
                            <div class="table-responsive">
                                <table id="listaReservas" class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Reservas</th>
                                            <th>Data</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    {foreach $reservations as $reservation}
                                        <tr>
                                            <td >
                                                <a href="{$BASE_URL}pages/inventory/model.php?id={$reservation.id_modelo}">{$reservation.nome_modelo}</a>
                                            </td>

                                            <td >
                                             {$reservation.data_inicio}
                                            </td>
                                        </tr>
                                    {/foreach}

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
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
                $('#newUsers').dataTable({
                    searching: false,
                    "bInfo": false
                });
            });
        </script>

{include file='common/footer.tpl'}