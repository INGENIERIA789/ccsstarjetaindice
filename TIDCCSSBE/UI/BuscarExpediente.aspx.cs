using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Paciente_BuscarExpediente : System.Web.UI.Page
{
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

        try
        {
           string result="";
            var datos = db.SP_SELECCIONAR_EXPEDIENTE(TextBox1.Text);
            foreach (SP_SELECCIONAR_EXPEDIENTEResult resultado in datos)
            {
                result = resultado.Estado;

            }
            if (result != null)
            {
                GridView1.DataSource = db.SP_SELECCIONAR_EXPEDIENTE(TextBox1.Text);
                GridView1.DataBind();
            }
         
        }
        catch (Exception ex)
        {
            Response.Write("<script language=javascript>alert('Error " + ex + "!');</script>");
        }
        finally
        {
            db.Dispose();
            
        }

    }
}