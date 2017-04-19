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
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                9/10/17
                                            </td>
                                        </tr>
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
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="item.html">Item #1</a>
                                            </td>
                                            <td >
                                                22/10/17
                                            </td>
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