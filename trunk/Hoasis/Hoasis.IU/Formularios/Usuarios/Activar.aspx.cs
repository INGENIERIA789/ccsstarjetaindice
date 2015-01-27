using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Usuarios
{
    public partial class Activar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCedula.Text = Session["idPaciente"].ToString();
            txtNombre.Text = Session["NoPaciente"].ToString();
            txtApellido1.Text = Session["ApePaciente1"].ToString();
            txtApellido2.Text = Session["ApePaciente2"].ToString();
            int n = Convert.ToInt32(Session["EstPaciente"].ToString());
            estado(n);
        }

        public void estado(int x)
        {

            if (x == 1)
            {
                btnActivar.Visible = false;
                lblActivar.Visible = false;
            }
            else
            {
                btnDesactivar.Visible = false;
                lblDesactivar.Visible = false;
            }
        }

        protected void btnActivar_Click(object sender, EventArgs e)
        {
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            string pass = Ser.generarPass();
            lblContra.Visible = true;
            txtPassword.Visible = true;
            txtPassword.Text = pass;
            if (Ser.ActivarPaciente(txtCedula.Text, 1, pass))
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Se guardaron los datos satisfactoriamente');</script>");
            else
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('No se guardaron los datos');</script>");
        }

        protected void btnDesactivar_Click(object sender, EventArgs e)
        {
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.DesactivarPaciente(txtCedula.Text, 0);
        }
    }
}