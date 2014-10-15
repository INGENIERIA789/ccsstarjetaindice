using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Paciente_TIDPACIENTE : System.Web.UI.Page
{
   public DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
   public clsTarjetaIndice TID = new clsTarjetaIndice();
   public clsPaciente PAC = new clsPaciente();
   public clsDetallePaciente DET = new clsDetallePaciente();
   public clsExpediente EXP = new clsExpediente();

   public void llenarInformacionPaciente() {
       TID.Pn_CedPaTid = txtCedulaPaciente.Text;
       TID.Pd_FecCreacionTid = DateTime.Now;
       TID.PiCedFun = 504000352;
       TID.PsEstTar = txttidestado.Value;
       TID.PsObsTarInd = txtObservacionDetalle.Text;

       PAC.Pd_FecNac = Convert.ToDateTime(txtFechaNaci.Text);
       PAC.Ps_EstCivil = txtEstCilPacient.Value;
       PAC.Ps_IdentiPa = txtCedulaPaciente.Text;
       PAC.Ps_NomPa = txtNombrePaciente.Text;
       PAC.Ps_Obs = txtObserPaciente.Text;
       PAC.Ps_PriApe = txtApellido1Paciente.Text;
       PAC.Ps_SegApe = txtApellido2Paciente.Text;
       PAC.Ps_Sexo = txtGenPacient.Value;

       DET.PiCodPa = Convert.ToInt32(txtNumPatrono.Text);
       DET.PsDom = txtDomicilio.Text;
       DET.PsIndPac = txtCedulaPaciente.Text;
       DET.PsNomMa = txtNombreMadre.Text;
       DET.PsNomPa = txtNomPadre.Text;
       DET.PsNomPat = txtxNombrePatrono.Text;
       DET.PsObs = txtObservacionDetalle.Text;

       EXP.PsBloEx = txtBloqueExpediente.Text;
       EXP.PsCedPac = txtCedulaPaciente.Text;
       EXP.PsCubEx = txtNumBlo.Text;
       EXP.PsEstEx = txtEstadoExpediente.Value;
       EXP.PdCreEX = Convert.ToDateTime(txtFechaCreacionExpediente.Text);
       EXP.PsObs = txtObserExpe.Text;    
   }
    public void agregar()
    {
        llenarInformacionPaciente();
      
        try
        {  llenarInformacionPaciente();
            db.sp_INSERTAR_PACIENTE(  
                PAC.Ps_IdentiPa,
                PAC.Ps_PriApe,
                PAC.Ps_SegApe,
                PAC.Ps_NomPa,
                PAC.Ps_Sexo,
                PAC.Ps_EstCivil,
                PAC.Pd_FecNac,
                PAC.Ps_Obs);
            
            db.sp_INSERTAR_TID(TID.Pn_CedPaTid,
                                     TID.Pd_FecCreacionTid,
                                        TID.PsEstTar,
                                         TID.PsObsTarInd,
                                         TID.PiCedFun);

            db.sp_INSERT_DETALLESPACIENTE(DET.PsNomPa,
                                          DET.PsNomMa,
                                          DET.PsDom,
                                          DET.PsIndPac,
                                          DET.PiCodPa,
                                          DET.PsNomPat,
                                          DET.PsObs);

            db.sp_INSERT_EXPEDIENTE(EXP.PsCedPac,
                                     EXP.PsBloEx,
                                     EXP.PsCubEx,
                                     EXP.PdCreEX,
                                     EXP.PsEstEx,
                                     EXP.PsObs);
            Response.Write("<script language=javascript>alert('Se agrego correctamente!');</script>");
        }
        catch(Exception e)
        {
           Console.WriteLine(e.Message);
           Response.Write("<script language=javascript>alert('error"+e+"');</script>");
        }
        finally{
            string valida = "";
            var datos = db.sp_Selecionar_Paciente(PAC.Ps_IdentiPa);
            foreach (sp_Selecionar_PacienteResult resultado in datos)
            {
                valida = resultado.NUM_IDENTIFICACION;

            }
            if (valida == txtCedulaPaciente.Text)
            {
                Response.Write("<script language=javascript>alert('Usuario Ingresado Correctamente!!!');</script>");
            }
            
            Response.Redirect("TIDPACIENTE.aspx");
            db.Dispose();//Libera todo los recursos!!
        };

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFechaCreacionExpediente.Text = Convert.ToString(DateTime.Now);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        agregar();
    }
    protected void txtCedulaPaciente_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string cedula = txtCedulaPaciente.Text;
            var datos = db.sp_Selecionar_Paciente(cedula);
            foreach (sp_Selecionar_PacienteResult resultado in datos)
            {
                txtNombrePaciente.Text = resultado.NOM_NOMBRE;
                txtApellido1Paciente.Text = resultado.NOM_APELLIDO1;
                txtApellido2Paciente.Text = resultado.NOM_APELLIDO2;
                txtEstCilPacient.Value = resultado.COD_ESTADO_CIVIL;
                txtGenPacient.Value = resultado.IND_SEXO;
                txtNomPadre.Text = resultado.NOMBRE_PADRE;
                txtNombreMadre.Text = resultado.NOMBRE_MADRE;
                txtxNombrePatrono.Text = resultado.NOMBRE_PATRONO;
            
                txtObservacionDetalle.Text = resultado.OBSERVACION1;
                txtNumPatrono.Text = Convert.ToString(resultado.CODIGO_PATRONO);
                txtDomicilio.Text = resultado.DOMICILIO;
                txtFechaNaci.Text = Convert.ToString(resultado.FEC_NACIMIENTO);
                /*
                txtNumBlo.Text = resultado.CUBICULO_EXPEDIENTE;
                txtBloqueExpediente.Text = resultado.BLOQUE_EXPEDIENTE;
                txtFechaCreacionExpediente.Text =Convert.ToString(resultado.FECHA_CREACION_EXPEDIENTE);
                txtObserExpe.Text = resultado.OBSERVACION2;
                txtEstadoExpediente.Value = resultado.ESTADO_EXPEDIENTE;*/
            }
            if (txtNombrePaciente.Text == "")
            {
                Response.Write("<script language=javascript>alert('La cédula no existe!!');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language=javascript>alert('Error " + ex + "!');</script>");
        }
        finally {
            db.Dispose();
        }
        }
    }
  
