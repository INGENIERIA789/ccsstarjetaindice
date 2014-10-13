using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Paciente_TIDPACIENTE : System.Web.UI.Page
{
   public DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    public void agregar()
    {
        string identi = "0";
        DateTime thisDay = DateTime.Today;
        int lester = 504000352;

        
        try
        {
            db.sp_INSERTAR_PACIENTE(
                identi,
                int.Parse(txtCedulaPaciente.Text),
                txtApellido1Paciente.Text,
                txtApellido2Paciente.Text,
                txtNombrePaciente.Text,
                txtGenPaciente.Text,
                txtEstCilPaciente.Text,
               thisDay,
               txtObserPaciente.Text);

            db.sp_INSERTAR_TID(int.Parse(txtCedulaPaciente.Text),
                                         thisDay,
                                         txttidestado.Value,
                                         txtObserPaciente.Text,
                                         lester);

            db.sp_INSERT_DETALLESPACIENTE(txtNomPadre.Text,
                                          txtNombreMadre.Text,
                                          txtDomicilio.Text,
                                          int.Parse(txtCedulaPaciente.Text),
                                          int.Parse(txtNumPatrono.Text),
                                          txtxNombrePatrono.Text,
                                          txtObservacionDetalle.Text);
            db.sp_INSERT_EXPEDIENTE(int.Parse(txtCedulaPaciente.Text),
                                     txtBloqueExpediente.Text,
                                     txtNumBlo.Text,
                                     thisDay,
                                     txtEstadoExpediente.Value,
                                     txtObserExpe.Text);
        }
        catch(Exception e)
        {
            Console.WriteLine(e.Message);
        }
        finally{
            db.Dispose();//Libera todo los recursos!!
        };

    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        agregar();
      
       
    }
    protected void txtCedulaPaciente_TextChanged(object sender, EventArgs e)
    {
        int cedula = Convert.ToInt32(txtCedulaPaciente.Text);
        var datos = db.sp_Selecionar_Paciente(cedula);
        foreach (sp_Selecionar_PacienteResult resultado in datos)
        {
            txtNombrePaciente.Text = resultado.NOM_NOMBRE;
        }
    }
  
}