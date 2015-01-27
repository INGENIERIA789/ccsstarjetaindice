using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Usuarios
{
    public partial class ActualizacionPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RequiredFieldValidator2.Visible = false;
            CompareValidator1.Visible = false;
            if (!Page.IsPostBack)
            {
                cargarDatos();
            }
        }
        public void cargarDatos()
        {
            string cedula = Session["Cedula"].ToString();
            DataSet ds = new System.Data.DataSet();
            WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
            ser.ObtenerDatosPaciente(cedula, ref ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtCedula.Text = ds.Tables[0].Rows[0][0].ToString();
                txtNombre.Text = ds.Tables[0].Rows[0][1].ToString();
                txtApellido1.Text = ds.Tables[0].Rows[0][2].ToString();
                txtApellido2.Text = ds.Tables[0].Rows[0][3].ToString();
                txtTel.Text = ds.Tables[0].Rows[0][4].ToString();
                txtDireccion.Value = ds.Tables[0].Rows[0][5].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0][6].ToString();
                TxtCedula1.Text = txtCedula.Text;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string cedula = Session["Cedula"].ToString();
            WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
            if (ser.ActualizarPaciente(cedula, txtDireccion.Value, txtTel.Text, txtEmail.Text))
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Se guardaron los datos satisfactoriamente');</script>");
            else
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('No se guardaron los datos');</script>");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Formularios/Index.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();

            if (txtContraActual.Text.Equals(""))
            {
                RequiredFieldValidator2.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('No se guardaron los datos');</script>");
            }
            else
            {
                if (ser.ActualizarContraseña(txtCedula.Text, txtContraActual.Text, txtContra.Text, txtRecontra.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Se cambió la contraseña satisfactoriamente');</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('No se pudo cambiar la contraseña');</script>");
                }
            }
            if (txtContra.Text != txtRecontra.Text)
            {
                CompareValidator1.Visible = true;
                RequiredFieldValidator2.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('No se guardaron los datos');</script>");

            }
        }
    }
}