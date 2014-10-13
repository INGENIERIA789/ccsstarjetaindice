using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Expediente : System.Web.UI.Page
{
    public DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    public clsMovimientosExpediente clsmovimientos = new clsMovimientosExpediente();
    
    public void llenado() {
        clsmovimientos.Pn_CedPaSE = txtCedulaPaciente.Text;
        clsmovimientos.Pn_CodArea = Convert.ToInt32(txtCodAre.Text);
        clsmovimientos.Pn_CodDoctor = Convert.ToInt32(txtCodDoc.Text);
        clsmovimientos.Pd_FecSalida = Convert.ToDateTime(txtfecha.Text);
        clsmovimientos.Ps_Obs = txtObservacion.Text;
        clsmovimientos.Ps_Res1 = txtEncargado.Text;
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        txtfecha.Text = Convert.ToString(DateTime.Now);
        clsmovimientos.Pn_CedPaSE = txtCedulaPaciente.Text;
    }
    public void buscarExpediente() {
        

    }
    protected void txtCedulaPaciente_TextChanged(object sender, EventArgs e)
    {
        
        try
        {
            string encontrado = "";
            var datos = db.SP_SELECCION_EXISTENCIA_EXPEDIENTE(clsmovimientos.Pn_CedPaSE);
            foreach (SP_SELECCION_EXISTENCIA_EXPEDIENTEResult resultado in datos)
            {
                txtEstadoExpediente.Value = resultado.ESTADO_EXPEDIENTE;
                encontrado = resultado.ESTADO_EXPEDIENTE;
            }
            if (encontrado != "")
            {
                Response.Write("<script language=javascript>alert('El expediente existe! Continue!');</script>");
                var tabla_historial = db.GENERAR_HISTORIAL(clsmovimientos.Pn_CedPaSE);
                GridView1.DataSource = tabla_historial;
                GridView1.DataBind();
            }
            else {
                Response.Write("<script language=javascript>alert('El expediente no existe!');</script>");
            }
            
        }
        catch (Exception ex)
        {
            Response.Write("<script language=javascript>alert('Error "+ex+"!');</script>");
        }
        finally
        {
            db.Dispose();
        }
       
          
        
    }
}