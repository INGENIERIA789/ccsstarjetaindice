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
            string encontrado = "";
            var datos = db.SP_SELECCION_EXISTENCIA_EXPEDIENTE(TextBox1.Text);
            foreach (SP_SELECCION_EXISTENCIA_EXPEDIENTEResult resultado in datos)
            {
                encontrado = resultado.ESTADO_EXPEDIENTE;
            }
            if (encontrado == "")
            {
                Response.Write("<script language=javascript>alert('El expediente no existe!');</script>");
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