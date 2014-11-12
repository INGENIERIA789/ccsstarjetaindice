using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Paciente_HojasEspecialidad : System.Web.UI.Page
{
    public void limpiar() {

        txtEspecialidad.Text="";
        txtCedulaPaciente.Text="";
        txtNombPaci.Text="";
        txtObservacion.Text="";
        txtPriAp.Text="";
        txtSegApe.Text="";
        txtCubiculoExpediente.Text = "";
        txtEstadoExpediente.Text = "";
        txtBloqueExpediente.Text = "";
    }
    public void llenardatos()
    {
        EX.Ps_FecRegEe = DateTime.Now;
        EX.Ps_Especialidad = txtEspecialidad.Text;
        EX.Ps_CedPaEe = txtCedulaPaciente.Text;
        EX.Ps_NomPAEe = txtNombPaci.Text;
        EX.Ps_ObsEe = txtObservacion.Text;
        EX.Ps_PriApePaEe = txtPriAp.Text;
        EX.Ps_SegApePaEe = txtSegApe.Text;

    }
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    clsExamenExterno EX = new clsExamenExterno();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFecha.Text = String.Format("{0:yyyy-MM-dd}", DateTime.Now);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try {
                llenardatos();
                db.SP_INSERTAR_EXAMENES_EXTERNOS(EX.Ps_CedPaEe, EX.Ps_PriApePaEe,
                EX.Ps_SegApePaEe, EX.Ps_NomPAEe, EX.Ps_Especialidad, EX.Ps_FecRegEe, EX.Ps_ObsEe);
                Response.Write("<script language=javascript>alert('Se agrego correctamente!');</script>");

              //  Response.Write("<script language=javascript>alert('Se necesitan llenar los campos!');</script>");
        }
       catch(Exception ex)
        {
       Response.Write(ex);
       }
        finally
        {
            db.Dispose();
            limpiar();
            
        }
     }
    protected void txtCedulaPaciente_TextChanged(object sender, EventArgs e)
    {
        try
        {
            var datos = db.sp_Selecionar_Paciente(txtCedulaPaciente.Text);
            foreach (sp_Selecionar_PacienteResult resultado in datos)
            {
                txtPriAp.Text = resultado.NOM_APELLIDO2;
                txtSegApe.Text = resultado.NOM_APELLIDO1;
                txtNombPaci.Text = resultado.NOM_NOMBRE;         
                txtBloqueExpediente.Text = resultado.BLOQUE_EXPEDIENTE;
                txtCubiculoExpediente.Text = resultado.CUBICULO_EXPEDIENTE;
                txtEstadoExpediente.Text = resultado.ESTADO_EXPEDIENTE;
            }
            if (txtNombPaci.Text == "")
            {
                Response.Write("<script language=javascript>alert('La cédula no existe!!');</script>");
                txtPriAp.Focus();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}