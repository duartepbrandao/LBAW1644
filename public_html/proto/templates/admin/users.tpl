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
                        <h3>Utilizadores</h3>
                        <hr class="divider">

                        <div class="table-responsive">
                            <table id="newUsers" class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>Email</th>
                                        <th>Permissões</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Gestor</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Operador</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Operador</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Gestor</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                    <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Operador</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Operador</td>
                                        <td>
                                        <button type="button" class="btn btn-danger">Banir</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor</td>
                                        <td>lorempsum@mail.com</td>
                                        <td>Utilizador</td>
                                        <td>
                                            <button type="button" class="btn btn-danger">Banir</button>
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
                $('#newUsers').dataTable();
            });
        </script>

{include file='common/footer.tpl'}