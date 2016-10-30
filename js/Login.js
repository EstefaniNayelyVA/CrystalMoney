function Logearse() {
    var nick = $('#txtUsuario').val();
    var pwd = $('#txtContraseña').val();
    var datos = "{'Nick': '" + nick + "','Password': '" + pwd + "'}";//JSON para enviarlo a el webservice
    //Aqui se introduce la cadena de conexion ajax para el web service
    $.ajax({
        url: "WebService.asmx/Acceso",
        data: datos,
        dataType: "json",
        type: "POST",
        contentType: "application/json; utf-8",//este es el estandar universal de los navegadores web
        success: function (msg) {
            if (msg.d.Estado == 1) {
                /*var strToken = msg.d.SesionInformacion.Token;
                var IdCredencial = msg.d.SesionInformacion.IdentificadorCredencial;
                var JSONToken = { Token: strToken, Credencial: IdCredencial } //esta es la chida
                $.cookie('Verificador', JSON.stringify(JSONToken), {
                    expires: 1, path: '/'
                });//Hasta aqui todo bien
                var cookieJson = JSON.parse($.cookie('Verificador'));
                var token_ = cookieJson.Token;
                var IdCredencial_ = cookieJson.Credencial;
                $.cookie('MiPrimeraCookieISSC', strToken, { expires: 1, path: '/' });//creo la cookie
                */window.location.href = "Index.aspx";
            }
            else {
                alert('Usuario Incorrecto');
            }
        },
        error: function (result) {
            debugger;
            alert("ERROR " + result.status + ' ' + result.statusText);
        }
    });
};