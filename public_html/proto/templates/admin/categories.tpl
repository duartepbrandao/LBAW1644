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
                                Área de Administração
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="col-lg-12">
                        <h3>Categorias</h3>
                        <hr class="divider">

                        <div class="table-responsive">
                            <table id="newUsers" class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th></th>
                                        <th>
                                        <button type="button" class="pull-right btn btn-default">Nova Categoria</button>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Material Informático</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Equipamento Vídeo</td>
                                    <td></td>
                                    <td>
                                        <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>Material Didático</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Equipamento Projeção</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Cabos</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
                                        </td>
                                    </tr>

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
                $('#newUsers').dataTable({searching: false,
                "bInfo": false});
            });
        </script>

{include file='common/footer.tpl'}
