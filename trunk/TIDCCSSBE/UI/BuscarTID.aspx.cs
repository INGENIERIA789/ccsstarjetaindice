using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Paciente_BuscarTID : System.Web.UI.Page
{
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            GridView1.DataSource = db.SP_BUSCAR_PACIENTE(txtNombre.Text, txtPriApe.Text, txtSenApe.Text, txtCedulaPaciente.Text).ToList();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        finally {
            db.Dispose();
        }
    }
}