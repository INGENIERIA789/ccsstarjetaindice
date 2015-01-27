using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios
{
    public partial class Index2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblUsuario.Visible = false;
            LblError.Visible = false;
            TxtUsuario.Focus();
        }

        protected void BtnEntrar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            WcfHoasis.Service1Client pers = new WcfHoasis.Service1Client();
            if (TxtUsuario.Text != "" && TxtContraseña.Text != "")
            {
                pers.AutenticarPersona(TxtUsuario.Text, TxtContraseña.Text, ref ds);
                if (ds != null)
                {
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            Session["Nombre"] = ds.Tables[0].Rows[0][1].ToString();
                            Session["Cedula"] = ds.Tables[0].Rows[0][0].ToString();
                            Response.Redirect("Inicio.aspx");
                        }
                        else
                        {
                            LblError.Visible = true;
                            TxtUsuario.Text = "";
                            ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Datos equivocados');</script>");
                        }
                    }
                }
            }
            else
            {
                LblError.Text = "Campos sin rellenar";
                LblError.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: alert('Datos equivocados');</script>");
            }
        }
    }
}