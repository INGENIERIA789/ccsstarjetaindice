using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Administrador_AreaTrabakj__ : System.Web.UI.Page
{
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    clsArea Ar = new clsArea();
    clsDetallePaciente a = new clsDetallePaciente();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public void llenarInfo() {
        Ar.Ps_CodAre1 = txtNumAre.Text;
        Ar.Ps_NomAre1 = txtNomAre.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
       try
        {
            llenarInfo();
            db.SP_INSERTAR_AREA(Convert.ToInt32(Ar.Ps_CodAre1), Ar.Ps_NomAre1);
            Response.Write("<script language=javascript>alert('El área se agrego correctamente!');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        finally {
            txtNomAre.Text = "";
            txtNumAre.Text = "";
            db.Dispose();
        }
    }
    protected void txtNombre_TextChanged(object sender, EventArgs e)
    {
      
        try
        {
            llenarInfo();
            var datos = db.sp_buscar_area(Convert.ToInt32(Ar.Ps_CodAre1));
           foreach(sp_buscar_areaResult resultado in datos)
           {
           txtNomAre.Text = resultado.NOMBRE_DEPARTAMENTO;
           }

        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        finally { 
        
        }
    }
}