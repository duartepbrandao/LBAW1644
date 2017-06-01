$(document).ready(function () {
    $('#ban-modal').on('submit', function (event) {
        var values = {};
        $.each($('#ban-form').serializeArray(), function (i, field) {
            values[field.name] = field.value;
        });
        console.log(values);
        $.post("../../api/admin/ban.php", {dias: values['days'],motivo: values['motivo'], userID: values['userID']})
            .done(function (data) {
                console.log(data);
                $('#ban-modal').modal('hide');
            })
            .fail(function () {
                alert("Error ao banir utilizador");
            })
        event.preventDefault();
    });
    $('.ban-user').on('click', function (e) {
        var userID = $(this).parent().parent().attr("data-userid");
        $('form#ban-form input#userID').val(userID);
    });
});