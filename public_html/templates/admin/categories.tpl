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
								
								 {foreach $categories as $categorie}
								
                                    <tr>
                                        <td>{$categorie.nome_categoria}</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary">Adicionar Gestor</button>
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

{include file='common/footer.tpl'}
