using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Usuarios
{
    public partial class ConsultaPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarGrilla();
            }
        }

        public void cargarGrilla()
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.ListarPacientes(ref ds);
            GridPacientes.DataSource = ds;
            GridPacientes.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtCedula.Text.Equals(""))
            {
                cargarGrilla();
            }
            else
            {
                DataSet ds = new DataSet();
                WcfHoasis.Service1Client ser = new WcfHoasis.Service1Client();
                ser.FiltrarPacientes(txtCedula.Text, ref ds);
                GridPacientes.DataSource = ds;
                GridPacientes.DataBind();

            }
        }

        protected void GridPacientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila;
            fila = GridPacientes.SelectedRow;
            Session["idPaciente"] = fila.Cells[1].Text;
            Session["NoPaciente"] = fila.Cells[2].Text;
            Session["ApePaciente1"] = fila.Cells[3].Text;
            Session["ApePaciente2"] = fila.Cells[4].Text;
            Session["EstPaciente"] = fila.Cells[8].Text;
            if (Convert.ToInt32(fila.Cells[8].Text) == 0)
            {
                Response.Write("<script>window.alert('Este paciente está desactivo, debe estar activo para regenerar la contraseña');</script>");
            }
            else
            {
                Response.Redirect("RegenerarContraseña.aspx");
            }
        }
    }
}