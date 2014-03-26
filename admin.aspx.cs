using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;

public partial class admin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public static string DataTableToJSON(DataTable table)
    {
        List<Dictionary<string, object>> list = new List<Dictionary<string, object>>();

        foreach (DataRow row in table.Rows)
        {
            Dictionary<string, object> dict = new Dictionary<string, object>();

            foreach (DataColumn col in table.Columns)
            {
                dict[col.ColumnName] = row[col];
            }
            list.Add(dict);
        }
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        return serializer.Serialize(list);
    }




    [WebMethod(EnableSession = true)]
    public static string validarIngresoAdmin(string name, string pass, string app)
    {

        string result = validarIngreso(name, pass, app);
        if (result == "ok")
        {
            var sessionUsuario = HttpContext.Current.Session;
            sessionUsuario["ID"] = name;
        }
        return result;
    }

    public static string validarIngreso(string name, string pass, string app)
    {

        string resultado = "";
        string usuario;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();

        string strSQL = "SELECT distinct usuario from UserData where usuario = @name and password = @pass and application = @app";
        SqlCommand cmd = new SqlCommand(strSQL, con);
        cmd.Parameters.Add("@name", SqlDbType.VarChar, 100);
        cmd.Parameters.Add("@pass", SqlDbType.VarChar, 300);
        cmd.Parameters.Add("@app", SqlDbType.VarChar, 100);
      
        cmd.Parameters["@name"].Value = name;
        cmd.Parameters["@pass"].Value = pass;
        cmd.Parameters["@app"].Value = app;


        try
        {
            con.Open();
            usuario = (String)cmd.ExecuteScalar();
            con.Close();
            if (name == usuario)
            {
                resultado = "ok";
            }
            else
            {
                resultado = "fail";
            }
        }
        catch (Exception ex)
        {
            resultado = "fail";
            Console.WriteLine(ex.Message);
        }
        finally
        {
            con.Close();
        }

        return resultado;
    }

    
}

