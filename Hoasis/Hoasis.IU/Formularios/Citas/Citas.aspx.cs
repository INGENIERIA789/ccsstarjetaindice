using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Citas
{
    public partial class Citas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cedula = Session["Cedula"].ToString();
            llenarGrid(cedula);

        }
        static string cedula;
        WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
        public void llenarGrid(string cedula)
        {
            DataSet ds = new DataSet();
            Ser.llenarGridCitas(cedula, ref ds);
            GdvCitas.DataSource = ds;
            GdvCitas.DataBind();
        }


        protected void CancelarCita(object sender, EventArgs e)
        {
            string[] commandArgs = (sender as LinkButton).CommandArgument.ToString().Split(new char[] { ',' });
            string Fecha = Convert.ToString(commandArgs[0]);
            int Cedula = Convert.ToInt32(cedula);
            String EstadoCita = commandArgs[1];
            if (EstadoCita == "Activa")
            {
                DataSet ds = new DataSet();
                Ser.CancelarCitas(Fecha, Cedula, ref ds);
                llenarGrid(cedula);
            }
        }
        protected void ReprogramarCita(object sender, EventArgs e)
        {
            string[] commandArgs = (sender as LinkButton).CommandArgument.ToString().Split(new char[] { ',' });
            string Fecha = Convert.ToString(commandArgs[0]);
            int Cedula = Convert.ToInt32(cedula);
            String EstadoCita = commandArgs[1];
            if (EstadoCita == "Activa")
            {
                DataSet ds = new DataSet();
                Ser.ReprogramarCitas(Fecha, Cedula, ref ds);
                llenarGrid(cedula);
            }
        }
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            int Cedula = Convert.ToInt32(cedula);
            Ser.BuscarCitas(TxtFechaCita.Text, Cedula, ref ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GdvCitas.DataSource = ds;
                GdvCitas.DataBind();
            }
            else
            {
                llenarGrid(cedula);
            }
        }
    }
}