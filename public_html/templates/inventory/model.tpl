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
                        {$model.nome}
                        <small>{$model.nome_categoria}</small>
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
                    <img src="{$BASE_URL}images/items/{$model.foto}" class="img-responsive img-thumbnail" alt="Nikon">
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <p>
                                <b>Quantidade disponível:</b> {$model.quantidade}
                            </p>
                            <br>
                            <p>
                                <b>
                                    Descrição:
                                </b>
                            </p>
                            <p>
                                {$model.nome}
                            </p>
                            <p>
                                {$model.descricao}
                            </p>
                        </div>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-primary center">Reservar</button>
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
</script>

{include file='common/footer.tpl'}