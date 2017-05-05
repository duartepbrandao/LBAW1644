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
                                        <button type="button" data-toggle="modal" data-target="#add-category-modal" class="pull-right btn btn-default">Nova Categoria</button>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
								
								 {foreach $categories as $categorie}
								
                                    <tr>
                                        <td>{$categorie.nome_categoria}</td>
                                        <td></td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add-manager-modal">
                                                Adicionar Gestor</button>
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
<!-- Modal -->
<div id="add-category-modal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" >
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-plus"></span> Nova Categoria</h4>
            </div>
            <div class="modal-body" >
                <form role="form" action="{$BASE_URL}actions/admin/add-category.php" method="post">
                    <div class="form-group">
                        <label for="nome_categoria"> Nome Categoria:</label>
                        <input type="text" class="form-control" id="nome_categoria" name="nome-categoria" placeholder="Introduza o nome da Categoria">
                        <input type="hidden" name="id-admin" value="{$ID}">
                    </div>
                    <button type="submit" class="btn btn-success btn-block add-category"><span class="glyphicon glyphicon-ok"></span> Adicionar</button>
                </form>
            </div>

        </div>
    </div>
</div>


<div id="add-manager-modal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p>Some text in the modal.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

        {include file='common/scripts.tpl'}

        <!-- Custom Scripts -->
        <script>
            $(document).ready(function () {
                $('#newUsers').dataTable();
            });
        </script>

{include file='common/footer.tpl'}
