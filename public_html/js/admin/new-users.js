/**
 * Created by Duarte on 04-May-17.
 */
$( document ).ready(function() {


    $('#user-role-modal').on('submit',function (event) {
      var button = $(event.relatedTarget);
      var row = button.parent().parent();
      $userID = row.data('userid');
      $.post("../../api/admin/accept-user.php", {userID: $userID})
          .done(function () {
              alert("pintou");
          })
          .fail(function () {
              alert("Error ao adicionar utilizador");
          })


    });
    $('.reject-user').click(function() {
        var row = $(this).parent().parent();
        var userID = row.attr('data-userid');
        $.post("../../api/admin/reject-user.php", {userID: userID})
            .done(function(){
                row.remove();
            })
            .fail(function(){
                alert("Erro ao apagar utilizador");
            })
    });
});