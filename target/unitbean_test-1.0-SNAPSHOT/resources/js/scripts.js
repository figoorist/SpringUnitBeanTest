//Модаль подтверждения удаления плюсов и мунусов

$(document).ready(function(){
    $(".triggerDelete").click(function (e){
        e.preventDefault();
        $("<input type='hidden' name='id' value='" + $(this).data("articleid") + "' />").appendTo(".deletePostParam");
        $("#confirmDeletingModal").modal();
    });

    $('#confirmDeletingModal').on('hidden.bs.modal', function (e) {
        $(".deletePostParam").empty();
    });
});



