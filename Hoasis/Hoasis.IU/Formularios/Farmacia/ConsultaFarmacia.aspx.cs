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

namespace Hoasis.IU.Formularios.Farmacia
{
    public partial class ConsultaFarmacia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sesion = Session["Cedula"].ToString();
            mostrar_persona(sesion);
            if (!Page.IsPostBack)
            {
                cargarGrid();
            }
            if (TxtCorreo.Text == "") {
                btnSiguiente1.Enabled = false;
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Por favor actualice sus datos personales. no puede hacer uso de esta opcion si no tiene un correo electronico registrado');</script>");                   
            }
        }
        public string codigo, nombreMedi, cedula, nombre, PApellido, SApellido, peso="0", correo, edad;//variables para capturar estados        

        protected void TxtConsultaMedicamento_TextChanged(object sender, EventArgs e)
        {
            if (TxtConsultaMedicamento.Text == "")
            {
                cargarGrid();
            }
            else
            {
                DataSet ds = new DataSet();
                string consulta = TxtConsultaMedicamento.Text;
                WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
                Ser.BuscarMedicamento(consulta, ref ds);
                DGVMedicamentos.DataSource = ds;
                DGVMedicamentos.DataBind();
            }
        }
        public void mostrar_persona(string ced)
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
            ser.Cargar_Persona(ced, ref ds);
            TxtSEdad.Text = ds.Tables[0].Rows[0][5].ToString();
            edad = TxtSEdad.Text;
            TxtCorreo.Text = ds.Tables[0].Rows[0][4].ToString();
            correo = TxtCorreo.Text;
            Session["ccorreo"] = correo;
            TxtSApellido.Text = ds.Tables[0].Rows[0][3].ToString();
            SApellido = TxtSApellido.Text;
            TxtPApellido.Text = ds.Tables[0].Rows[0][2].ToString();
            PApellido = TxtPApellido.Text;
            TxtNombre.Text = ds.Tables[0].Rows[0][1].ToString();
            nombre = TxtNombre.Text;
            TxtCedula.Text = ds.Tables[0].Rows[0][0].ToString();
            cedula = TxtCedula.Text;
        }
        public void cargarGrid()
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.MostrarMedicamentos(ref ds);
            DGVMedicamentos.DataSource = ds;
            DGVMedicamentos.DataBind();
        }
        public void enviarEmail(string pass, string consulta, string correoPARA, string correoDE, string encabezado)
        {
            WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
            ser.enviar_correo(pass,consulta,correoPARA,correoDE,encabezado);
        }
     
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            
            if (TxtConsultaMedicamento.Text.Equals(""))
            {                
            }
            else
            {
                DataSet ds = new DataSet();
                string consulta = TxtConsultaMedicamento.Text;
                WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
                Ser.BuscarMedicamento(consulta, ref ds);
                DGVMedicamentos.DataSource = ds;
                DGVMedicamentos.DataBind();
            }
        }

        protected void Ckb_Niño_CheckedChanged(object sender, EventArgs e)
        {
            if (Ckb_Niño.Checked == true)
            {
                Lbl_PesoNiño.Visible = true;
                LblMedidaPeso.Visible = true;
                Txt_PesoNiño.Visible = true;
                lblEdad.Visible = true;
                DDLedadNiño.Visible = true;                
            }
            else
            {
                Lbl_PesoNiño.Visible = false;
                LblMedidaPeso.Visible = false;
                Txt_PesoNiño.Visible = false;
                lblEdad.Visible = false;
                DDLedadNiño.Visible = false;
            }
        }

        protected void btnSiguiente1_Click(object sender, EventArgs e)
        {
            cedula = TxtCedula.Text;
            nombre = TxtNombre.Text;
            PApellido = TxtPApellido.Text;
            SApellido = TxtSApellido.Text;
            correo = TxtCorreo.Text;
            edad = TxtSEdad.Text;           
            this.MultiView1.ActiveViewIndex += 1;
        }
        protected void btnSiguiente2_Click(object sender, EventArgs e)
        {
            if (Ckb_Niño.Checked)
            {
                Session["peso"] = Txt_PesoNiño.Text;
                Session["edad"] = DDLedadNiño.SelectedItem;
                Session["check"] = 1;
                if (Txt_PesoNiño.Text != null && Txt_PesoNiño.Text != "")
                {
                    if ((DDLedadNiño.SelectedValue == "0")&&(DDLmeses.SelectedValue == "0")) 
                    {
                     Response.Write("<script>javascript: alert('Ingrese edad del niño en meses');</script>");
                    }
                    else
                    {
                        Session["fmeses"] = DDLmeses.SelectedValue;
                        this.MultiView1.ActiveViewIndex += 1;
                    }
                }
                else {
                    Response.Write("<script>javascript: alert('Ingrese el peso del niño');</script>");
                }
            }
            else 
            {
                Session["check"] = 0;
                this.MultiView1.ActiveViewIndex += 1;                
            }
        }
        protected void btnAtras3_Click(object sender, EventArgs e)
        {            
            if (Session["check"].ToString() == "1") 
            {
                Ckb_Niño.Checked=true;
                Txt_PesoNiño.Text = Session["peso"].ToString();
                DDLedadNiño.SelectedValue = Session["edad"].ToString();
                if (Session["edad"].ToString() == "0") 
                {
                    DDLmeses.Visible = true;
                    lblmeses.Visible = true;
                    lblmmeses.Visible = true;
                    DDLmeses.SelectedValue = Session["fmeses"].ToString();
                }
                Lbl_PesoNiño.Visible = true;
                LblMedidaPeso.Visible = true;
                Txt_PesoNiño.Visible = true;
                lblEdad.Visible = true;
                DDLedadNiño.Visible = true;
            }
            this.MultiView1.ActiveViewIndex -= 1;
        }
        protected void btnAtras_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex -= 1;
        }

        protected void DGVMedicamentos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DGVMedicamentos.PageIndex = e.NewPageIndex;
        }
        protected void DGVMedicamentos_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow fila = DGVMedicamentos.Rows[e.NewSelectedIndex];
            e.Cancel = true;                      
            this.MultiView1.ActiveViewIndex += 1;
        }
        protected void DGVMedicamentos_Load(object sender, EventArgs e)
        {
            cargarGrid();
        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            string pass = "Farma0523";
            string para = Session["ccorreo"].ToString();
            string de = "hoasis.farmacia.hla@gmail.com";
            string encabezado = "Consulta Farmaceutica HLA Hoasis";
            if (Txt_Consulta.Text != "")
            {
                try
                {                   
                    //guardo la consulta
                    WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
                    ser.IngresarConsulta(cedula, edad, peso,nombre, PApellido, SApellido, DateTime.Now, Txt_Consulta.Text,
                    "Pendiente", Session["codigo"].ToString(),Session["nombreMedi"].ToString());                   
                    //envio el email
                    enviarEmail(pass, Txt_Consulta.Text, para, de, encabezado);
                    Response.Write("<script>javascript: alert('Consulta enviada exitosamente');</script>");                   
                }
                catch
                {
                    
                }
            }
            else {
                Response.Write("<script>window.alert('Digita tu consulta');</script>");
            }

        }

        protected void DGVMedicamentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila;
            fila = DGVMedicamentos.SelectedRow;
            Session["codigo"] = fila.Cells[1].Text;
            Session["nombreMedi"] = fila.Cells[2].Text;
            v4medica.Text = Session["nombreMedi"].ToString();
            this.MultiView1.ActiveViewIndex += 1;
        }

        protected void DDLedadNiño_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDLedadNiño.SelectedValue == "0")
            {
                DDLmeses.Visible = true;
                lblmeses.Visible = true;
                lblmmeses.Visible = true;
            }
            else 
            {
                DDLmeses.Visible = false;
                lblmeses.Visible = false;
                lblmmeses.Visible = false;
            }
        }

        protected void DDLedadNiño_TextChanged(object sender, EventArgs e)
        {
            if (DDLedadNiño.SelectedValue == "0")
            {
                DDLmeses.Visible = true;
                lblmeses.Visible = true;
                lblmmeses.Visible = true;
            }
            else
            {
                DDLmeses.Visible = false;
                lblmeses.Visible = false;
                lblmmeses.Visible = false;
            }
        }
    }
}