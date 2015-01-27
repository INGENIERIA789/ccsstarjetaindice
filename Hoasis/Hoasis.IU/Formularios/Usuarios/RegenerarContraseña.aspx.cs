using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Usuarios
{
    public partial class RegenerarContraseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtCedula.Text = Session["idPaciente"].ToString();
                string nombre = Session["NoPaciente"].ToString();
                string Apellido1 = Session["ApePaciente1"].ToString();
                string Apellido2 = Session["ApePaciente2"].ToString();
                lblPaciente.Text = Apellido1 + " " + Apellido2 + " " + " " + nombre;
                
            }
        }

        protected void btnRegenrar_Click(object sender, EventArgs e)
        {
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            string pass = Ser.generarPass();
            lblContra.Visible = true;
            txtPassword.Visible = true;
            txtPassword.Text = pass;
            if (Ser.RegenerarContraseña(txtCedula.Text, pass))
               Response.Write("<script>window.alert('Se guardaron los datos satisfactoriamente');</script>");
               
            else
            Response.Write("<script>window.alert('No se guardaron los datos');</script>");
                
        }

        
    }
}