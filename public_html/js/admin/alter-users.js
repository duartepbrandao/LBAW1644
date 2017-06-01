/**
 * Created by Duarte on 04-May-17.
 */
$(document).ready(function () {
    $('#user-role-modal').on('submit', function (event) {
        var values = {};
        $.each($('#user-role-form').serializeArray(), function (i, field) {
            values[field.name] = field.value;
        });
        var row = $('tr[data-userid="'+values['userID']+'"]');
        $.post("../../api/admin/accept-user.php", {role: values['role'], userID: values['userID']})
            .done(function () {
                $('#user-role-modal').modal('hide');
            })
            .fail(function () {
                alert("Error ao alterar utilizador");
            })
        event.preventDefault();
    });
    $('.accept-user').on('click', function (e) {
        var userID = $(this).parent().parent().attr("data-userid");
        $('form#user-role-form input#userID').val(userID);
    });
});