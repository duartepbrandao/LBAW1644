/**
 * Created by Duarte on 04-May-17.
 */
$(document).ready(function () {


    $('#user-role-modal').on('submit', function (event) {
        var values = {};
        $.each($('#user-role-form').serializeArray(), function (i, field) {
            values[field.name] = field.value;
        });
        console.log(values);
        var row = $('tr[data-userid="'+values['userID']+'"]');
        $.post("../../api/admin/accept-user.php", {role: values['role'], userID: values['userID']})
            .done(function () {
                $('#user-role-modal').modal('hide');
                row.remove();
            })
            .fail(function () {
                alert("Error ao adicionar utilizador");
            })
        event.preventDefault();

    });
    $('.accept-user').on('click', function (e) {
        var userID = $(this).parent().parent().attr("data-userid");
        $('<input>').attr({type: 'hidden', name: 'userID', value: userID}).appendTo('form#user-role-form');
    });
    $('.reject-user').click(function () {
        var row = $(this).parent().parent();
        var userID = row.attr('data-userid');
        $.post("../../api/admin/reject-user.php", {userID: userID})
            .done(function () {
                row.remove();
            })
            .fail(function () {
                alert("Erro ao apagar utilizador");
            })
    });
});