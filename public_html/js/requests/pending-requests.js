/**
 * Created by Duarte on 04-May-17.
 */
$( document ).ready(function() {
    $('.accept-request').click(function() {
        var row = $(this).parent().parent();
        var requestID = row.attr('data-requestid');
        $.post("../../api/requests/accept.php", {requestID: requestID})
            .done(function(){
                //alert("Success notification");
                row.remove();
            })
            .fail(function(){
                alert("NOPdsadsa");
            })
    });
    $('.reject-request').click(function() {
        var row = $(this).parent().parent();
        var requestID = row.attr('data-requestid');
        $.post("../../api/requests/reject.php", {requestID: requestID})
            .done(function(){
                //alert("Success notification");
                row.remove();
            })
            .fail(function(){
                alert("NOPdsadsa");
            })
    });
});