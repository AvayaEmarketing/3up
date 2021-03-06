﻿//tipo de mensajes ->  default, info, primary, sucess, warning, danger
function message(texto, titulo, tipo) {
    BootstrapDialog.show({
        title: titulo,
        message: texto,
        cssClass: 'type-' + tipo
    });
    return false;
}

$(document).keypress(function (e) {
    if (e.which == 13) {
        $("#login").click();
    }
});


$(document).ready(function () {



    $("#login").click(function () {
        $.prettyLoader();
        var pass = $("#UserPass").val();
        pass = $.sha256(pass);
        var usreg = $("#usuario").val();
        var app = "3UP";
        var datae = { 'name': usreg, 'pass': pass, 'app': app };
        $.ajax({
            type: "POST",
            url: "admin.aspx/validarIngresoAdmin",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(datae),
            dataType: "json",
            success: function (resultado) {
                if (resultado.d === "ok") {
                    document.location.href = "report.aspx";
                } else {
                    message("Alert, please try again", "Avaya", "danger");
                }
            }
        });
        return false;
    });
});