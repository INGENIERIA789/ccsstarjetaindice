using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Usuarios
{
    public partial class ActivacionPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                llenarGrid();
            }
        }
        public void llenarGrid()
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            Ser.GridActivacion(ref ds);
            GridActivacion.DataSource = ds;
            GridActivacion.DataBind();
        }
        protected void GridActivacion_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow fila;
            fila = GridActivacion.SelectedRow;
            Session["idPaciente"] = fila.Cells[1].Text;
            Session["NoPaciente"] = fila.Cells[2].Text;
            Session["ApePaciente1"] = fila.Cells[3].Text;
            Session["ApePaciente2"] = fila.Cells[4].Text;
            Session["EstPaciente"] = fila.Cells[5].Text;
            Response.Redirect("Activar.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtCedula.Text.Equals(""))
            {
                llenarGrid();
            }
            else
            {
                DataSet ds = new DataSet();
                string cedula = txtCedula.Text;
                WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
                Ser.LlenarGrilla(cedula, ref ds);

                GridActivacion.DataSource = ds;
                GridActivacion.DataBind();
            }
        }

        
    }
}