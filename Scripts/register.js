function mensaje(texto, titulo, tipo) {
    BootstrapDialog.show({
        //type: 'BootstrapDialog.TYPE_' + tipo,
        title: titulo,
        message: texto,
        cssClass: 'type-' + tipo,
        buttons: [{
            label: 'Ok',
            cssClass: 'btn-danger',
            action: function (dialogItself) {
                dialogItself.close();
            }
        }]
    });
}



function putInformation(formulario) {
    var datae = {
        'companyName': formulario.companyName, 'companyCity': formulario.companyCity, 'companyCountry': formulario.companyCountry, 'CAMName': formulario.CAMName,
        'firstName': formulario.firstName, 'lastName': formulario.lastName, 'certifications': formulario.certifications, 'linkID': formulario.linkID,
        'companyState': formulario.companyState, 'companyRegion': formulario.companyRegion, 'CSENumber': formulario.CSENumber, 'email': formulario.email, 'phone': formulario.phone,
        'checklist': formulario.checklist, 'opportunity': formulario.opportunity, 'presentationDate': formulario.presentationDate, 'sales': formulario.sales,
        'competiting': formulario.competiting, 'solution': formulario.solution, 'resource': formulario.resource, 'session': formulario.session
    };
    $.ajax({
        type:"POST",
        url: "3upForm.aspx/putData",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(datae),
        dataType: "json",
        success: function (resultado) {
            if (resultado.d !== "fail") {
                mensaje("thanks for fill our form", "Avaya Form", "danger");
                limpiarFormulario(getForm());
            } else {
                mensaje("Alert, please try again", "Avaya Form", "danger");
            }
        }
    });
    return false;
}

$(document).ready(function () {
   
    $("#submit").click(function () {
        $.prettyLoader();
        var formulario = getForm();
        var validado = validar(formulario);
        if (validado) {
            putInformation(formulario);
        } else {
            mensaje("Please check the required fields or email format", "Avaya Form", "danger");
        }

    });

});

function validaMail(mail) {
    var rta;
    var correo = /^[A-Za-z][A-Za-z0-9_\.-]*@[A-Za-z0-9_-]+\.[A-Za-z0-9_.]+[A-za-z]$/;
    if (!correo.exec(mail)) {
        rta = false;
    } else {
        rta = true;
    }
    return rta;
}

function validar(obj) {
    var respuesta = 0;
    for (var i in obj) {
        if (obj[i] == null || obj[i].length < 1 || /^\s+$/.test(obj[i])) {
            //if (i == "q11") {
              //  respuesta = respuesta + 0;
              //  $("#" + i).css('background', '#FFF');
            //} else {
                respuesta = respuesta + 1;
                $("#" + i).css('background', '#FAE0E0');
           // }

        } else {
            $("#" + i).css('background', '#FFF');
            if (i == "email") {
                var correo = /^[A-Za-z][A-Za-z0-9_\.-]*@[A-Za-z0-9_-]+\.[A-Za-z0-9_.]+[A-za-z]$/;
                if (!correo.exec(obj[i])) {
                    respuesta = respuesta + 1;
                    $("#" + i).css('background', '#FAE0E0');
                } else {
                    respuesta = respuesta + 0;
                    $("#" + i).css('background', '#FFF');
                }
            } else {
                respuesta = respuesta + 0;
            }

        }
    }
    if (respuesta === 0) {
        return true;
    } else {
        return false;
    }
}

function getForm() {

    var companyName = $("#companyName").val();
    var companyCity = $("#companyCity").val();
    var companyCountry = $("#companyCountry").val();
    var CAMName = $("#CAMName").val();
    var firstName = $("#firstName").val();
    var lastName = $("#lastName").val();
    var certifications = $("#certifications").val();
    var linkID = $("#linkID").val();
    var companyState = $("#companyState").val();
    var companyRegion = $("#companyRegion").val();
    var CSENumber = $("#CSENumber").val();
    var email = $("#email").val();
    var phone = $("#phone").val();
    //var checklist = ("#completed input[type='radio']:checked");
    var valores2 = "";
    $('#completed :checkbox:checked').each(function () {
        valores2 = valores2 + $(this).val() + ',';
    });
    if ((valores2.substring(valores2.length - 1, valores2.length)) === ',') {
        valores2 = valores2.substring(0, valores2.length - 1);
    }
    var checklist = valores2;
    var opportunity = $("#opportunity").val();
    var presentationDate = $("#presentationDate").val();
    var sales = $("#sales").val();
    var competiting = $("#competiting").val();
    var solution = $("#solution").val();
    var resource = $("#resource").val();
    var session = $("#session").val();


    var formulario = new Object();
    formulario.companyName = companyName;
    formulario.companyCity = companyCity;
    formulario.companyCountry = companyCountry;
    formulario.CAMName = CAMName;
    formulario.firstName = firstName;
    formulario.lastName = lastName;
    formulario.certifications = certifications;
    formulario.linkID = linkID;
    formulario.companyState = companyState;
    formulario.companyRegion = companyRegion;
    formulario.CSENumber = CSENumber;
    formulario.email = email;
    formulario.phone = phone;
    formulario.checklist = checklist;
    formulario.opportunity = opportunity;
    formulario.presentationDate = presentationDate;
    formulario.sales = sales;
    formulario.competiting = competiting;
    formulario.solution = solution;
    formulario.resource = resource;
    formulario.session = session;
    return formulario;
}


function validaMail() {
    var email = $("#email").val();
    var datae = { 'email': email };
    $.ajax({
        type: "POST",
        url: "survey.aspx/validateEmail",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(datae),
        dataType: "json",
        success: function (resultado) {
            if (resultado.d === "ok") {
                mensaje("This email has already filled the survey", "Avaya Survey", "danger");
                $("#email").val("");
            }
        }
    });
    return false;
}

