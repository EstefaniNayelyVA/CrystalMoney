using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Xml;
using FinanzasClassLibrary.Modelo;
using FinanzasClassLibrary.Conexion;
using FinanzasClassLibrary.Enumeradores;
/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
 [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public EstadoRespuesta Acceso(string Nick, string Password)
    {
        SqlConexion sql = new SqlConexion();
        sql.Conectar(ConfigurationManager.ConnectionStrings["ServidorBD"].ToString());
        List<SqlParameter> _Parametros = new List<SqlParameter>();
        _Parametros.Add(new SqlParameter("@Nick", Nick));
        _Parametros.Add(new SqlParameter("@Pwd", Password));
        sql.PrepararProcedimiento("dbo.pa_IniciarSesion", _Parametros);
        DataTable _dt = sql.EjecutarTable();
        string Mensaje = string.Empty;
        DataTableReader dtr = _dt.CreateDataReader();
        while (dtr.Read())
        {
            Mensaje = dtr[0].ToString();
        }
        EstadoRespuesta state = new EstadoRespuesta();
        XmlDocument xdoc = new XmlDocument();
        xdoc.LoadXml(Mensaje);
        if (int.Parse(xdoc["Respuesta"]["Valido"].InnerText) == 1)
        {
            state.Estado = Estatus.Aceptado;
            state.Mensaje = xdoc["Respuesta"]["Mensaje"].InnerText;
        }
        else
        {
            state.Estado = Estatus.NoAceptado;
            state.Mensaje = xdoc["Respuesta"]["Mensaje"].InnerText;
        }
        sql.Desconectar();
        sql.Dispose();
        return state;
    }
    [WebMethod]
    public List<Gasto> cargarGastos(string Nick, string storedprocedure)
    {
        SqlConexion sql = new SqlConexion();
        sql.Conectar(ConfigurationManager.ConnectionStrings["ServidorBD"].ToString());
        List<SqlParameter> _Parametros = new List<SqlParameter>();
        _Parametros.Add(new SqlParameter("@Nick", Nick));
        sql.PrepararProcedimiento(storedprocedure, _Parametros);
        DataTable _dt = sql.EjecutarTable();
        string Mensaje = string.Empty;
        DataTableReader dtr = _dt.CreateDataReader();

        var convertedList = (from rw in _dt.AsEnumerable()
            select new Gasto(){
            Identificador = Convert.ToInt32(rw["pk_IdGasto"]),
            Descripcion = Convert.ToString(rw["Descripcion"]),
            Importe = Convert.ToDouble(rw["Importe"]),
            Fijo = Convert.ToBoolean(rw["FijoBool"]),
            persona = new Persona()
            {
                Nombre = Convert.ToString(rw["Nombre"]),
                Apellidos = Convert.ToString(rw["Apellidos"]),
                Email = Convert.ToString(rw["email"]),
                Identificador = Convert.ToInt32(rw["pk_IdPersona"])
            }
        }).ToList();
        return convertedList;
    }
    public List<Ingreso> cargarIngresos(string Nick, string storedprocedure)
    {
        SqlConexion sql = new SqlConexion();
        sql.Conectar(ConfigurationManager.ConnectionStrings["ServidorBD"].ToString());
        List<SqlParameter> _Parametros = new List<SqlParameter>();
        _Parametros.Add(new SqlParameter("@Nick", Nick));
        sql.PrepararProcedimiento(storedprocedure, _Parametros);
        DataTable _dt = sql.EjecutarTable();
        string Mensaje = string.Empty;
        DataTableReader dtr = _dt.CreateDataReader();

        var convertedList = (from rw in _dt.AsEnumerable()
                             select new Ingreso()
                             {
                                 Identificador = Convert.ToInt32(rw["pk_IdGasto"]),
                                 Descripcion = Convert.ToString(rw["Descripcion"]),
                                 Importe = Convert.ToDouble(rw["Importe"]),
                                 Fijo = Convert.ToBoolean(rw["FijoBool"]),
                                 persona = new Persona()
                                 {
                                     Nombre = Convert.ToString(rw["Nombre"]),
                                     Apellidos = Convert.ToString(rw["Apellidos"]),
                                     Email = Convert.ToString(rw["email"]),
                                     Identificador = Convert.ToInt32(rw["pk_IdPersona"])
                                 }
                             }).ToList();
        return convertedList;
    }


}
