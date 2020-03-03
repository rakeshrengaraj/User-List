

$(document).ready(function(){
    setTimeout(function () {
        $(".notice_bar").remove();
      }, 3000)

    //   setTimeout(function () {
    //     $("#alert_notice").alert('close');
    //   }, 3000)


    $("#errorModalCenter").modal()
    setTimeout(function () {
        $("#errorModalCenter").modal('hide');
    }, 3000)
})

