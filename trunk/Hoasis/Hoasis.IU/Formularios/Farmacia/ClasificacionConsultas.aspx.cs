using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Drawing;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Globalization;

namespace Hoasis.IU.Formularios.Farmacia
{
    public partial class ClasificacionConsultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrid();
            }
        }

        string calificacion,codigo, Respuesta, estado, nombMedic,
            codiMedic, nombre, edad,
            fechaConsult, correo, cedula, PAapellido,
            SAapellido, peso, Pregunta, fechaRespuesta;
        DateTime m = new DateTime();

        public void cargarGrid()
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.VerConsultaPorEstado("Pendiente", ref ds);
            GVConsultas.DataSource = ds;
            GVConsultas.DataBind();
        }      

        protected void btnAtras_Click(object sender, EventArgs e)
        {
            btnGuardar.Visible = true;
            this.MultiView1.ActiveViewIndex -= 1;
        }

        protected void GVConsultas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GVConsultas.PageIndex = e.NewPageIndex;
        }
        protected void GVConsultas_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow fila = GVConsultas.Rows[e.NewSelectedIndex];
            e.Cancel = true;
            codigo = fila.Cells[1].Text;
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
            ser.CargarConsult(codigo, ref ds);

            Session["fcod"] = ds.Tables[0].Rows[0][0].ToString();
            codigo = Session["fcod"].ToString();

            Session["festado"] = ds.Tables[0].Rows[0][1].ToString();
            estado = Session["festado"].ToString();

            Session["ffechaConsult"] = ds.Tables[0].Rows[0][2].ToString();
            fechaConsult = Session["ffechaConsult"].ToString();

            Session["fcedula"] = ds.Tables[0].Rows[0][3].ToString();
            cedula = Session["fcedula"].ToString();
            
            Session["fnombre"] = ds.Tables[0].Rows[0][4].ToString();
            nombre=Session["fnombre"].ToString();
            
            Session["fPApellido"]= ds.Tables[0].Rows[0][5].ToString();
            PAapellido = Session["fPApellido"].ToString();
            
            Session["fSApellido"] = ds.Tables[0].Rows[0][6].ToString();
            SAapellido = Session["fSApellido"].ToString();
            
            Session["fedad"] = ds.Tables[0].Rows[0][7].ToString();
            edad = Session["fedad"].ToString();

            Session["fpeso"] = ds.Tables[0].Rows[0][8].ToString();
            peso = Session["fpeso"].ToString();

            Session["fpreg"]= ds.Tables[0].Rows[0][9].ToString();
            Pregunta = Session["fpreg"].ToString();
            
            Session["fcorreo"] = ds.Tables[0].Rows[0][10].ToString();
            correo = Session["fcorreo"].ToString();
            
            Session["fCodMed"]= ds.Tables[0].Rows[0][11].ToString();
            codiMedic = Session["fCodMed"].ToString();
            
            Session["fnomMed"] = ds.Tables[0].Rows[0][12].ToString();
            nombMedic = Session["fnomMed"].ToString();
            
            fechaRespuesta = ds.Tables[0].Rows[0][13].ToString();

            Session["fRespuesta"] = ds.Tables[0].Rows[0][14].ToString();
            Respuesta = Session["fRespuesta"].ToString();

            txtCedula.Text = cedula;
            txtEstadoConsulta.Text = estado;            
            Txtedad.Text = edad;
            TxtNombre.Text = nombre+" "+PAapellido+" "+SAapellido;
            TxtPeso.Text = peso;
            TxtMedNombre.Text = nombMedic;
            txtConsulta.Text = Pregunta;
            TxtRespuesta.Text = Respuesta;
            if (Respuesta != "") { btnGuardar.Visible = false; }
            this.MultiView1.ActiveViewIndex += 1;
        }
        protected void GVConsultas_Load(object sender, EventArgs e)
        {
            cargarGrid();
        }

        private void enviarPDFenEmail()
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {                    
                    StringBuilder sb = new StringBuilder();   
                   sb.Append("<table align='center' width='100%' cellspacing='0' cellpadding='3'>"); 
                   sb.Append("<tr><td colspan ='3'><p align='right'>"+DateTime.Now.Day + " - " + DateTime.Now.ToString("MMMM", CultureInfo.CreateSpecificCulture("es-MX")) + " - " + DateTime.Now.Year + "</p></td></tr>");                  
                   sb.Append("<tr><td colspan ='3'><img height='100%' width='500px' src='http://localhost:2173/Imagenes/farmaciapx.png' /></td></tr>");
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left' ><b>Estimado usuario(a):</b><br />" + nombre + " " + PAapellido + " " + SAapellido + "</td>");                  
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left' ><br />Reciba un cordial saludo. En relación a la consulta N°" + codigo + " realizada por su persona, el día <br />"+m.Day+" - "+m.Month+" - "+m.Year+" le remitimos la respuesta correspondiente</td>");
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left' ><b>Para el medicamento: </b><br />"+nombMedic+"</td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left' ><b>Su pregunta fue: </b></td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left'>" + Pregunta + "</td></tr>");
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left' ><b>Respuesta Farmacéutica: </b></td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left'>" + Respuesta + "</td></tr>");             
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3'></td></tr>");
                   sb.Append("<tr><td colspan ='3'><br /></td></tr>");
                   sb.Append("<tr><td rowspan ='1' colspan='1'><img height='50px' width='50px' src='http://localhost:2173/Imagenes/CCSS.gif'/></td>");
                   sb.Append("<td align='left' colspan='2'>Dr(a).<br /> Farmacéutico(a)<br/>Telefono: 2685-84-74</td></tr>");
                   sb.Append("<tr><td colspan='3' align='left'><br /> El Servicio de Farmacia del Hospital de la Anexión, le agradece el uso de este servicio y gustosamente aclarará, cualquier inquietud sobre la respuesta emitida. En caso de requerir otra información, estamos en la mejor disposición de colaborar.</td></tr>");
                   sb.Append("</table>");
                    StringReader sr = new StringReader(sb.ToString());

                    Document pdfDoc = new Document(PageSize.A4,50, 50, 40, 40);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    using (MemoryStream memoryStream = new MemoryStream())
                    {
                        PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                        pdfDoc.Open();
                        htmlparser.Parse(sr);
                        pdfDoc.Close();
                        byte[] bytes = memoryStream.ToArray();
                        memoryStream.Close();
                        MailMessage mm = new MailMessage("hoasis.farmacia.hla@gmail.com", Session["fcorreo"].ToString());
                        mm.Subject = "Respuesta Farmacéutica HLA";
                        mm.Body = "Respuesta de la farmacia del Hospital la Anexión";
                        mm.Attachments.Add(new Attachment(new MemoryStream(bytes), "Respuesta Farmacéutica HLA.pdf"));
                        mm.IsBodyHtml = true;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        smtp.EnableSsl = true;
                        NetworkCredential NetworkCred = new NetworkCredential();
                        NetworkCred.UserName = "hoasis.farmacia.hla@gmail.com";
                        NetworkCred.Password = "Farma2503";
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = NetworkCred;
                        smtp.Port = 587;
                        smtp.Send(mm);
                    }
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {            
                Respuesta = TxtRespuesta.Text;               
                Pregunta = Session["fpreg"].ToString();
                codigo = Session["Fcod"].ToString();
                cedula = Session["fcedula"].ToString();
                nombre = Session["Fnombre"].ToString();
                PAapellido = Session["FPApellido"].ToString();
                SAapellido = Session["FSApellido"].ToString();
                codiMedic = Session["FCodMed"].ToString();
                nombMedic = Session["FnomMed"].ToString();
                calificacion = DDLCalificaciones.SelectedValue;
                estado = Session["Festado"].ToString();  
                edad = Session["Fedad"].ToString();
                peso = Session["Fpeso"].ToString();
                fechaConsult = Session["ffechaConsult"].ToString();                
                m = Convert.ToDateTime(fechaConsult);

                if ((TxtRespuesta.Text != "") && (DDLCalificaciones.SelectedIndex > 0))
            {  
                WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();                
                try
                {
                    try { enviarPDFenEmail(); }
                    catch { Response.Write("<script>window.alert('No se envio tu respuesta revisa las configuraciones de seguridad de tu correo');</script> "); }
                    try
                    {
                        ser.actualizarconsulta(codigo, calificacion, DateTime.Now.ToShortDateString(), "Resuelta",Respuesta);
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>window.alert('no se Actualizo tu respuesta');</script>"+ex); 
                    }
                    Response.Write("<script>window.alert('Se envio tu respuesta');</script>");
                    txtConsulta.Text = Pregunta;
                    txtCedula.Text = cedula;
                    TxtNombre.Text = nombre + " " + PAapellido + " " + SAapellido;
                    Txtedad.Text = edad;
                    TxtPeso.Text = peso;
                    TxtMedNombre.Text = nombMedic;
                    txtEstadoConsulta.Text = estado;
                    DDLCalificaciones.SelectedValue = calificacion;
                    btnGuardar.Visible = false;
                }
                catch (Exception ex)
                {
                    Response.Write("<script>window.alert(ex);</script> " + ex);
                }                
            }
            else {
                if ((TxtRespuesta.Text == null)||(TxtRespuesta.Text == "")) 
                {
                    Response.Write("<script>window.alert('Ingresa una respuesta para esta consulta por favor');</script> "); 
                }
                if ((DDLCalificaciones.SelectedIndex == 0)||(DDLCalificaciones.SelectedValue == "Indique la Clasificación"))
                {
                    Response.Write("<script>window.alert('Seleccione una clasificación para esta consulta por favor');</script> "); 
                }
                txtConsulta.Text = Pregunta;
                txtCedula.Text = cedula;
                TxtNombre.Text = nombre+" "+PAapellido+" "+SAapellido;
                Txtedad.Text = edad;
                TxtPeso.Text = peso;                
                TxtMedNombre.Text = nombMedic;
                txtEstadoConsulta.Text = estado;
                DDLCalificaciones.SelectedValue = calificacion;
            }
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.VerConsultaPorEstado(DDLEstados.SelectedValue, ref ds);
            GVConsultas.DataSource = ds;            
            GVConsultas.DataBind();
        }

        protected void btnListTodo_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.VerConsulta(ref ds);
            GVConsultas.DataSource = ds;
            GVConsultas.DataBind();
        }

        protected void btnConsPTIpo_Click(object sender, EventArgs e)
        {
            lblVerPorEstado.Text = DDLEstados.SelectedValue;
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.VerConsultaPorEstado(DDLEstados.SelectedValue, ref ds);
            GVConsultas.DataSource = ds;
            GVConsultas.DataBind();
        }

        protected void GVConsultas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DDLEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.VerConsultaPorEstado(DDLEstados.SelectedValue, ref ds);
            GVConsultas.DataSource = ds;
            GVConsultas.DataBind();
        }

       
    }
}