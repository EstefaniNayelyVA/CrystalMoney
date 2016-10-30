var finanzas = {
    apilarIngresoEnTabla: function (tabla, descripcion, ganancia) {
        var descripcion = $('#' + descripcion).val();
        var ganancia = $('#'+ganancia).val();
        $('#' + tabla + ' tr:last').after('<tr class="row"><th class="col-md-2">' + descripcion + '</th><th class="col-md-2">' + ganancia + '</th></tr>');
    },
    sumarTabla: function (tabla, input, texto) {
        var tabla = document.getElementById(tabla);
        var suma = 0;
        for (var i = 1; i < tabla.rows.length; i++)
        {
           suma += parseFloat(tabla.rows[i].cells[1].innerHTML + "");
        }
        var control = $('#' + input);
        control.val(texto + suma.toString());
    },


    suma:function (input1, input2, input3, input4, texto)
    {
        var gastoF = $('#' + input1).val();
        var gastoV = $('#' + input2).val();
        var ingresoF = $('#' + input3).val();
        var ingresoV = $('#' + input4).val();

            var gasto = gastoF + gastoV;
            var ingreso = ingresoF + ingresoV;
        log
            var control = $('#' + gasto + ingreso);
            control.val(texto);
    },

    cargarGastosFijos: function () {
        var datos = "{'Nick': 'aco" + "','storedprocedure':'pa_consultarGastosFijos'}";//JSON para enviarlo a el webservice
        $.ajax({
            url: "WebService.asmx/cargarGastos",
            data: datos,
            dataType: "json",
            type: "POST",
            contentType: "application/json; utf-8",//este es el estandar universal de los navegadores web
            success: function (msg) {
                for (var i = 0; i < msg.d.length; i++) {
                    $('#tblGastosFijos tr:last').after('<tr class="row"><th class="col-md-2">' + msg.d[i].Descripcion + '</th><th class="col-md-2">' + msg.d[i].Importe + '</th></tr>');
                }
            },
            error: function (result) {
                alert("ERROR " + result.status + ' ' + result.statusText);
            }
        });
        this.cargarGastosVariables();
    },
    cargarGastosVariables: function () {
        var datos = "{'Nick': 'aco" + "','storedprocedure':'pa_consultarGastosVariables'}";//JSON para enviarlo a el webservice
        $.ajax({
            url: "WebService.asmx/cargarGastos",
            data: datos,
            dataType: "json",
            type: "POST",
            contentType: "application/json; utf-8",//este es el estandar universal de los navegadores web
            success: function (msg) {
                for (var i = 0; i < msg.d.length; i++) {
                    $('#tblGastosVariables tr:last').after('<tr class="row"><th class="col-md-2">' + msg.d[i].Descripcion + '</th><th class="col-md-2">' + msg.d[i].Importe + '</th></tr>');
                }
            },
            error: function (result) {
                alert("ERROR " + result.status + ' ' + result.statusText);
            }
        });
    },

    cargarIngresosVariables: function () {
        var datos = "{'Nick': 'aco" + "','storedprocedure':'pa_consultarIngresosVariables'}";//JSON para enviarlo a el webservice
        $.ajax({
            url: "WebService.asmx/cargarIngresos",
            data: datos,
            dataType: "json",
            type: "POST",
            contentType: "application/json; utf-8",//este es el estandar universal de los navegadores web
            success: function (msg) {
                for (var i = 0; i < msg.d.length; i++) {
                    $('#tblIngresosVariables tr:last').after('<tr class="row"><th class="col-md-2">' + msg.d[i].Descripcion + '</th><th class="col-md-2">' + msg.d[i].Importe + '</th></tr>');
                }
            },
            error: function (result) {
                alert("ERROR " + result.status + ' ' + result.statusText);
            }
        });
    },

    cargarIngresosFijos: function () {
        var datos = "{'Nick': 'aco" + "','storedprocedure':'pa_consultarIngresosFijos'}";//JSON para enviarlo a el webservice
        $.ajax({
            url: "WebService.asmx/cargarIngresos",
            data: datos,
            dataType: "json",
            type: "POST",
            contentType: "application/json; utf-8",//este es el estandar universal de los navegadores web
            success: function (msg) {
                for (var i = 0; i < msg.d.length; i++) {
                    $('#tblIngresos tr:last').after('<tr class="row"><th class="col-md-2">' + msg.d[i].Descripcion + '</th><th class="col-md-2">' + msg.d[i].Importe + '</th></tr>');
                }
            },
            error: function (result) {
                alert("ERROR " + result.status + ' ' + result.statusText);
            }
        });
    },

    ObtenerCookie: function () {
        var cookieJson = JSON.parse($.cookie('Verificador'));
        return cookieJson;
    },
    ValidarCookie: function () {
        if ($.cookie('MiPrimeraCookieISSC') == null) {
            window.location.href = "Login.aspx";
        }
    }
};