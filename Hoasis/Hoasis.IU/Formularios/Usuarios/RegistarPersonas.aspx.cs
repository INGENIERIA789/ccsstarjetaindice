using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Usuarios
{
    public partial class RegistarPersonas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtCedula.Focus();
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
            ser.registrarusuarios(TxtCedula.Text, TxtNombre.Text, TxtPApellido.Text,
            TxtSApellido.Text, TxtTelefono.Text, TxtDireccion.Text, TxtEmail.Text,
            TxtFechaN.Text, ref ds);
            if (TxtCedula.Text != "" || TxtFechaN.Text != "" || TxtNombre.Text != "" || TxtPApellido.Text != "" || TxtSApellido.Text != "")
            {
                limpiar();
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Datos del Usuarios ingresados exitosamente');</script>");
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Datos No ingresados');</script>");
        }
        public void limpiar()
        {
            TxtCedula.Text = "";
            TxtNombre.Text = "";
            TxtPApellido.Text = "";
            TxtSApellido.Text = "";
            TxtTelefono.Text = "";
            TxtEmail.Text = "";
            TxtFechaN.Text = "";
            TxtDireccion.Text = "";
        }
    }
}