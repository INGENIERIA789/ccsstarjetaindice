using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Farmacia
{
    public partial class RetiroMedicamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarGrid();
        }

        WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
        public void llenarGrid()
        {
            DataSet ds = new DataSet();
            string cedula = Session["Cedula"].ToString();
            Ser.llenarGridMedicamentos(cedula, ref ds);
            GdvMedicamentos.DataSource = ds;
            GdvMedicamentos.DataBind();
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string cedula = Session["Cedula"].ToString();
            Ser.LlenarGrillaMedicamentos(TxtFecha.Text, cedula, ref ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GdvMedicamentos.DataSource = ds;
                GdvMedicamentos.DataBind();
            }
            else
            {
                llenarGrid();
            }
        }
    }
}