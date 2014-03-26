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

    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load ( object sender, EventArgs e )
        {

        }

        [WebMethod]
        public static string putData ( string companyName, string companyCity, string companyCountry, string CAMName, string firstName, string lastName, string certifications, string linkID, string companyState, string companyRegion, string CSENumber, string email, string phone, string checklist, string opportunity, string presentationDate, string sales, string customerAudience, string contactCustomer, string competiting, string solution, string demoResource, string resource, string session )
        {
            string result = "";
			string resultado = "";
            DateTime datt = DateTime.Now;
            string fecha = "";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["calawebConnectionString"].ToString();

            string strSQL = "SELECT CURRENT_TIMESTAMP AS registerDate";
            SqlCommand cmd = new SqlCommand(strSQL, con);
            try
            {
                con.Open();
                datt = (DateTime) cmd.ExecuteScalar();
                fecha = String.Format("{0:MM/dd/yyyy HH:mm:ss}", datt);
                con.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
            }

            //string stmt = "INSERT INTO Cala_Web.InnovationLounge_Survey (email, registrationDate ,q1, q2, q3, q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,perception, experience ) VALUES(@email, @registerDate, @q1, @q2, @q3, @q4, @q5, @q6, @q7, @q8, @q9, @q10,@q11,@q12,@q13,@perception,@experience)";
            string stmt = "INSERT INTO Cala_Web.Tbl_3upForm ([companyName],[companyCity],[companyCountry] ,[CAMName],[firstName],[lastName],[certifications],[linkID],[companyState],[companyRegion],[CSENumber],[email],[phone],[checklist] ,[opportunity],[presentationDate],[sales],[customerAudience],[contactCustomer],[competiting],[solution],[demoResource],[resource],[session],[registerDate]) VALUES(@companyName,@companyCity,@companyCountry,@CAMName,@firstName,@lastName,@certifications,@linkID,@companyState,@companyRegion,@CSENumber,@email,@phone,@checklist,@opportunity,@presentationDate,@sales,@customerAudience,@contactCustomer,@competiting,@solution,@demoResource,@resource,@session,@registerDate)";

            SqlCommand cmd2 = new SqlCommand(stmt, con);

            cmd2.Parameters.Add("@companyName", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@companyCity", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@companyCountry", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@CAMName", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@firstName", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@lastName", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@certifications", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@linkID", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@companyState", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@companyRegion", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@CSENumber", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@email", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@phone", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@checklist", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@opportunity", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@presentationDate", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@sales", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@competiting", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@solution", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@resource", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@session", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@registerDate", SqlDbType.Date);
            cmd2.Parameters.Add("@customerAudience", SqlDbType.NVarChar, 150);
            cmd2.Parameters.Add("@contactCustomer", SqlDbType.NVarChar,150);
            cmd2.Parameters.Add("@demoResource", SqlDbType.NVarChar, 150);

            cmd2.Parameters["@companyName"].Value = companyName;
            cmd2.Parameters["@companyCity"].Value = companyCity;
            cmd2.Parameters["@companyCountry"].Value = companyCountry;
            cmd2.Parameters["@CAMName"].Value = CAMName;
            cmd2.Parameters["@firstName"].Value = firstName;
            cmd2.Parameters["@lastName"].Value = lastName;
            cmd2.Parameters["@certifications"].Value = certifications;
            cmd2.Parameters["@linkID"].Value = linkID;
            cmd2.Parameters["@companyState"].Value = companyState;
            cmd2.Parameters["@companyRegion"].Value = companyRegion;
            cmd2.Parameters["@CSENumber"].Value = CSENumber;
            cmd2.Parameters["@email"].Value = email;
            cmd2.Parameters["@phone"].Value = phone;
            cmd2.Parameters["@checklist"].Value = checklist;
            cmd2.Parameters["@opportunity"].Value = opportunity;
            cmd2.Parameters["@presentationDate"].Value = presentationDate;
            cmd2.Parameters["@sales"].Value = sales;
            cmd2.Parameters["@competiting"].Value = competiting;
            cmd2.Parameters["@solution"].Value = solution;
            cmd2.Parameters["@resource"].Value = resource;
            cmd2.Parameters["@session"].Value = session;
            cmd2.Parameters["@registerDate"].Value = datt;
            cmd2.Parameters["@customerAudience"].Value = customerAudience;
            cmd2.Parameters["@contactCustomer"].Value = contactCustomer;
            cmd2.Parameters["@demoResource"].Value = demoResource;

            try
            {
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                result = "ok";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                result = "fail";
            }
            finally
            {
                con.Close();
            }
			if (result == "ok") {
            string nombrec = firstName + " " + lastName;
		    resultado = sendMails(nombrec,email,companyName);
			}
			
            return resultado;
        }
		
		public static string sendMails(string nombre, string correo,string company)
        {
            string result = "";
            try
            {
                //string contenido = getContenidoMail(nombre, observacion);
                //string plantilla = getPlantilla();
				string plantilla = "Thank you for registering to 3Up! Demo Coaching Program!, Test Message";
                string rta_mail = SendMail(correo, "e-marketing@avaya.com", "Thank you for registering to 3Up! Demo Coaching Program!", plantilla);
				
				string plantilla2 = "A new user has registered on 3Up! Demo Coaching Program! <br/> <br/> Name: "+nombre+ "<br/> Email: "+correo+"<br/> Company Name: "+company;
				//SendMail("zimmerer@avaya.com", "e-marketing@avaya.com", "A new user has registered on 3Up! Demo Coaching Program!", plantilla2);
                result = "ok";
            }
            catch (Exception ex)
            {
                result = "false" + ex;
            }
            return result;
        }
		
		 public static string SendMail(string to, string from, string subject, string contenido)
        {
            string respuesta = "";

            MailAddress sendfrom = new MailAddress(from);
            MailAddress sendto = new MailAddress(to);
            MailMessage message = new MailMessage();

            ContentType mimeType = new System.Net.Mime.ContentType("text/html");
            string body = HttpUtility.HtmlDecode(contenido);
            AlternateView alternate = AlternateView.CreateAlternateViewFromString(body, mimeType);
            message.AlternateViews.Add(alternate);

            message.From = new MailAddress(from);
            message.To.Add(to);
            message.Subject = subject;

            SmtpClient client = new SmtpClient("localhost");

            try
            {
                client.Send(message);
                respuesta = "ok";

            }
            catch (SmtpException e)
            {
                respuesta = "fail";
                throw new SmtpException(e.Message);

            }
            return respuesta;
        }
		
		public static string getPlantilla()
        {
            string fullPath = HttpContext.Current.Server.MapPath("~");
			string html = "";
            html = File.ReadAllText(fullPath + "\\usa\\events\\3UP\\mail\\dallas_mail_conf_register.html");//cambiar la ruta de la plantilla del mail
			return html;
        }
		
		
    }
