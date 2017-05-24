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
                <h3>Novos Utilizadores</h3>
                <hr class="divider">

                <div class="table-responsive">
                    <table id="newUsers" class="table table-hover table-striped">
                        <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Email</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>

                        {foreach $newUsers as $user}
                            <tr data-userid="{$user.id_utilizador}">
                                <td> <a href="{$BASE_URL}/pages/user/view_profile.php?id={$user.id_utilizador}"</a>
                                    {$user.nome}</td>
                                <td>{$user.email}</td>

                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#user-role-modal">Aceitar</button>
                                    <button type="button" class="btn btn-danger reject-user">Cancelar</button>
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
    <div id="user-role-modal" class="modal fade" role="dialog">
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
                            <label for="sel1">Estatuto Utilizador:</label>
                            <select class="form-control" id="sel1">
                                <option>Aluno</option>
                                <option>Professor</option>
                                <option>Funcionário</option>
                                <option>Operador</option>
                                <option>Gestor</option>
                                <option>Administrador</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success btn-block set-role"><span class="glyphicon glyphicon-ok"></span> Adicionar</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->

{include file='common/scripts.tpl'}

<!-- Custom Scripts -->

<script src="{$BASE_URL}js/admin/new-users.js"></script>
<script>
    $(document).ready(function () {
        $('#newUsers').dataTable();
    });
</script>

{include file='common/footer.tpl'}