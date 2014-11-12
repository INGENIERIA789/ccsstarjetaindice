using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_registrarDoctor : System.Web.UI.Page
{
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            db.SP_INSERTAR_MEDICO(Convert.ToInt32(txtCodigoMedico.Text),
                                                  txtApellido1.Text,
                                                  txtNombreMedico.Text,
                                                  txtApellido2.Text,
                                                  txtEspecialidadMedico.Text,
                                                  txtArea.Text,
                                                  txtEstadoExpediente.Value);
            Response.Write("<script language=javascript>alert('Se agrego correctamente!');</script>");
        }
        catch (Exception ex) { Response.Write(ex); }
        finally
        {
            Response.Redirect("~/UI/RegistrarDoctor");
        }
    }
    protected void txtCodigoMedico_TextChanged(object sender, EventArgs e)
    {
        try
        {
            int a = 0;
            var datos = db.SP_BUSCARDOCTOR(Convert.ToInt32(txtCodigoMedico.Text));
            foreach (SP_BUSCARDOCTORResult resultado in datos)
            {
                txtApellido1.Text = resultado.APELLIDO_1_DOCTOR;
                txtApellido2.Text = resultado.APELLIDO_2_DOCTOR;
                txtEspecialidadMedico.Text = resultado.ESPECIALIDAD_DOCTOR;
                txtNombreMedico.Text = resultado.NOMBRE_DOCTOR;
                txtEstadoExpediente.Value = resultado.ESTADO_DOCTOR;
                txtArea.Text = resultado.AREA_TRABAJO_DOCTOR;
                a = Convert.ToInt32(resultado.ESTADO);
            }
            if (a == 1)
            {

            }
            else
            {
               limpiartodo();
                Response.Write("<script language=javascript>alert('El doctor no existe!');</script>");
                txtNombreMedico.Focus();
            }
        }
        catch (Exception ex)
        { Response.Write(ex); }
    }
    public void limpiartodo (){ 
    txtApellido1.Text ="";
    txtApellido2.Text = "";
    txtEspecialidadMedico.Text = "";
    txtNombreMedico.Text = "";
    txtArea.Text = "";
    }
   
    /* protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            db.SP_ELIMINARDOCTOR(Convert.ToInt32(txtCodigoMedico.Text));
            Response.Write("<script language=javascript>alert('Se elimino correctamente');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        
        }
        }*/
}