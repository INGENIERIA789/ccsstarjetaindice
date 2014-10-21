using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_HojasUrgencia : System.Web.UI.Page
{
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    clsHojaUrgencia HU = new clsHojaUrgencia();
    public void llenardatos() {
        HU.Pd_FecRegU = DateTime.Now;
        HU.Pn_NumAseguradoU = txtNumeroAsegurado.Text;
        HU.Ps_CedPaU = txtCedulaPaciente.Text;
        HU.Ps_NomPAU = txtNombPac.Text;
        HU.Ps_ObsU = txtObservacion.Text;
        HU.Ps_PriApePaU = txtAppelli1.Text;
        HU.Ps_SegApePaU = txtApelli2.Text;

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFecha.Text = Convert.ToString(DateTime.Now);
    }
    protected void txtCedulaPaciente_TextChanged(object sender, EventArgs e)
    {
        try
        {
            var datos = db.sp_Selecionar_Paciente(txtCedulaPaciente.Text);
            foreach (sp_Selecionar_PacienteResult resultado in datos)
            {
                txtApelli2.Text = resultado.NOM_APELLIDO2;
                txtAppelli1.Text = resultado.NOM_APELLIDO1;
                txtNombPac.Text = resultado.NOM_NOMBRE;
                txtNumeroAsegurado.Text = resultado.CODIGO_PATRONO;
                txtBloqueExpediente.Text = resultado.BLOQUE_EXPEDIENTE;
                txtCubiculoExpediente.Text = resultado.CUBICULO_EXPEDIENTE;
                txtEstadoExpediente.Text = resultado.ESTADO_EXPEDIENTE;
            }
            if (txtNombPac.Text == "")
            {
                Response.Write("<script language=javascript>alert('La cédula no existe!!');</script>");
                txtNombPac.Focus();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}