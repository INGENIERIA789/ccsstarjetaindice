﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management.Instrumentation;

public partial class UI_Expediente : System.Web.UI.Page
{
    public DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    public clsMovimientosExpediente clsmovimientos = new clsMovimientosExpediente();
    public string cedula = "504000352";
    public void llenado() {
        clsmovimientos.Pn_CedPaSE = txtCedulaPaciente.Text;
        clsmovimientos.Pn_CodArea = Convert.ToInt32(txtCodAre.Text);
        clsmovimientos.Pn_CodDoctor = Convert.ToInt32(txtCodDoc.Text);
        clsmovimientos.Pd_FecSalida = Convert.ToDateTime(txtfecha.Text);
        clsmovimientos.Ps_Obse = txtObservacion.Text;
        clsmovimientos.Ps_Res1 = txtEncargado.Text;
        clsmovimientos.Ps_Esta = txtEstadoExpediente.Value;
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        txtfecha.Text = Convert.ToString(DateTime.Now);
        clsmovimientos.Pn_CedPaSE = txtCedulaPaciente.Text;
        
    }
  
    protected void txtCedulaPaciente_TextChanged(object sender, EventArgs e)
    {
        try
        {
            llenado();
            string encontrado = "";
            var datos = db.SP_SELECCION_EXISTENCIA_EXPEDIENTE(clsmovimientos.Pn_CedPaSE);
            foreach (SP_SELECCION_EXISTENCIA_EXPEDIENTEResult resultado in datos)
            {
                txtEstadoExpediente.Value = resultado.ESTADO_EXPEDIENTE;
                encontrado = resultado.ESTADO_EXPEDIENTE;
            }
            if (encontrado == "")
            {
                Response.Write("<script language=javascript>alert('El expediente no existe!');</script>");
            }
            else
            {
                MovimientosDatos();
                txtCodAre.Focus();
               
                
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            llenado();
            db.SP_INSERTAR_MOVIMIENTO(clsmovimientos.Pn_CedPaSE,
                                      clsmovimientos.Pn_CodArea,
                                      clsmovimientos.Pn_CodDoctor,
                                      clsmovimientos.Pd_FecSalida,
                                      clsmovimientos.Ps_Obse,
                                      clsmovimientos.Ps_Esta,
                                      clsmovimientos.Ps_Res1);

            Response.Write("<script language=javascript>alert('SE AGREGO !!!');</script>");
        }
        catch (Exception ex)
        { Response.Write("<script language=javascript>alert('Error " + ex + "!');</script>");
        }
        finally
        {
            db.Dispose();
            Response.Redirect("MovimientosExpediente.aspx");

        }
    }
    protected void txtCodDoc_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string encontrado = "";
            clsmovimientos.Pn_CodDoctor = Convert.ToInt32(txtCodDoc.Text);
            var resultado = db.sp_buscar_doctor(clsmovimientos.Pn_CodDoctor);
            foreach (sp_buscar_doctorResult datos in resultado)
            {
                encontrado = datos.NOMBRE_DOCTOR + datos.APELLIDO_1_DOCTOR ;
            }
            if (encontrado != "")
            {
                txtNombreDoctor.Text = encontrado;
            }
            else
            {
                Response.Write("<script language=javascript>alert('El doctor no existe!');</script>");
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
    protected void txtCodAre_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string encontrado = "";
            clsmovimientos.Pn_CodArea = Convert.ToInt32(txtCodAre.Text);
            var resultado = db.sp_buscar_area(clsmovimientos.Pn_CodArea);
            foreach (sp_buscar_areaResult datos in resultado)
            {
                encontrado = datos.NOMBRE_DEPARTAMENTO;
            }
            if (encontrado != "")
            {               
                txtArea.Text = encontrado;
            }
            else
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
    public void MovimientosDatos() {
        GridView2.DataSource = db.GENERAR_HISTORIAL_MOVIMIENTO(txtCedulaPaciente.Text).ToList();
        GridView2.DataBind();
    }
}
