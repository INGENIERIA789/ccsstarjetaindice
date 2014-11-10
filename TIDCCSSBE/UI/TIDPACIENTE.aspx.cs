using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp;
using iTextSharp.text.pdf;
using System.IO;


public partial class UI_Paciente_TIDPACIENTE : System.Web.UI.Page
{
   public DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();//Se llama a la conexión
   public clsTarjetaIndice TID = new clsTarjetaIndice();//Se llama a la clase de la tarje indice
   public clsPaciente PAC = new clsPaciente();//Se llama la clase paciente
   public clsDetallePaciente DET = new clsDetallePaciente();//Se llama a la clase del Detalle del Paciente
   public clsExpediente EXP = new clsExpediente(); //Se llama a la clase expediente

   public void limpiarCampos() {
       txtNombrePaciente.Text = "";
       txtApellido1Paciente.Text = "";
       txtApellido2Paciente.Text = "";
       txtEstCilPacient.Value = "";
       txtGenPacient.Value = "";
       txtNomPadre.Text = "";
       txtNombreMadre.Text = "";
       txtxNombrePatrono.Text = "";
       txtObservacionDetalle.Text = "";
       txtNumPatrono.Text = "";
       txtDomicilio.Text = "";
       txtFechaNaci.Text = String.Format("{0:yyyy-MM-dd}", DateTime.Now);
       txtNumBlo.Text = "";
       txtBloqueExpediente.Text = "";
       txtFechaCreacionExpediente.Text = "";
       txtObserExpe.Text = "";
       txtEstadoExpediente.Value = "";
   }
   public void desabilitar() {
      
   }
   public void buscarPaciente()
   {
       try
       {
           string existencia = "";
           string cedula = txtCedulaPaciente.Text;
           var datos = db.sp_Selecionar_Paciente(cedula);
           foreach (sp_Selecionar_PacienteResult resultado in datos)
           { //Se carga los especio con los datos
               existencia = resultado.algo;
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
               txtFechaNaci.Text = String.Format("{0:yyyy-MM-dd}", resultado.FEC_NACIMIENTO);
               /*
               txtNumBlo.Text = resultado.CUBICULO_EXPEDIENTE;
               txtBloqueExpediente.Text = resultado.BLOQUE_EXPEDIENTE;
               txtFechaCreacionExpediente.Text =Convert.ToString(resultado.FECHA_CREACION_EXPEDIENTE);
               txtObserExpe.Text = resultado.OBSERVACION2;
               txtEstadoExpediente.Value = resultado.ESTADO_EXPEDIENTE;*/
           }

           if (existencia == "Existe")
           {
               txtNombrePaciente.Enabled = false;
               txtApellido1Paciente.Enabled = false;
               txtApellido2Paciente.Enabled = false;
               txtEstCilPacient.Disabled = false;
               txtGenPacient.Disabled = false;
               txtFechaNaci.Enabled = false;
           }else{ 
           Response.Write("<script language=javascript>alert('La cédula no existe!!');</script>");
               limpiarCampos();
               txtNombrePaciente.Focus();
           }

       }
       catch (Exception ex)
       {
           Response.Write("<script language=javascript>alert('Error " + ex + "!');</script>");
       }
       finally
       {
           //Libera los recursos
       }
   }// no sirve

    public void llenarInformacionPaciente() {
       try
       {
           TID.Pn_CedPaTid = txtCedulaPaciente.Text;
           TID.Pd_FecCreacionTid = DateTime.Now;
           TID.PiCedFun = 504000352;
           TID.PsEstTar = txttidestado.Value;
           TID.PsObsTarInd = txtObservacionDetalle.Text;

           PAC.Pd_FecNaci = Convert.ToDateTime(txtFechaNaci.Text);
           PAC.Ps_EstCivil = txtEstCilPacient.Value;
           PAC.Ps_IdentiPa = txtCedulaPaciente.Text;
           PAC.Ps_NomPa = txtNombrePaciente.Text;
           PAC.Ps_Obse = txtObserPaciente.Text;
           PAC.Ps_PriApel = txtApellido1Paciente.Text;
           PAC.Ps_SegApel = txtApellido2Paciente.Text;
           PAC.Ps_Sexo = txtGenPacient.Value;

           DET.PiCodPa = txtNumPatrono.Text;
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
       catch (Exception ex)
       {
           Response.Write(ex);
       }
   }
    public void agregar()
    {
  
        try
        {  llenarInformacionPaciente();//Se manda a llamar el metodo llenar información del paciente
            Response.Write("<script language=javascript>alert('Se agrego correctamente!');</script>");
            db.sp_INSERTAR_PACIENTE(  
                PAC.Ps_IdentiPa,
                PAC.Ps_PriApel,
                PAC.Ps_SegApel,
                PAC.Ps_NomPa,
                PAC.Ps_Sexo,
                PAC.Ps_EstCivil,
                PAC.Pd_FecNaci,
                PAC.Ps_Obse);
            
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
        }
        catch(Exception e)
        {
           Console.WriteLine(e.Message);
           Response.Write("<script language=javascript>alert('error"+e+"');</script>");
        }
        finally{
            
          //Libera todo los recursos!!
        };

    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
        txtFechaCreacionExpediente.Text = Convert.ToString(DateTime.Now);
     /*   if (Session["User"] == null && Session["Pass"] == null)
        {
            Response.Redirect("~/UI/AccesoAplicacion");
            Response.Write("<script language=javascript>alert('Debe iniciar sección!');</script>");
        }*/
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        agregar();
        imprimir();
  /*  if (txtCedulaPaciente.Text != null && txtApellido2Paciente.Text != null)
    {
        agregar();
        Response.Write("<script language=javascript>alert('Usuario Ingresado Correctamente!!!');</script>");
    }
    else {
        Response.Write("<script language=javascript>alert('Se necesitan completar los campos');</script>");
    }
        try
        {
            string valida = "";//Se genera auxiliar para validar si se ingreso
            var datos = db.sp_Selecionar_Paciente(txtCedulaPaciente.Text);
            foreach (sp_Selecionar_PacienteResult resultado in datos)
            {
                valida = resultado.NUM_IDENTIFICACION;
            }
            if (valida == txtCedulaPaciente.Text)
            {
                Response.Write("<script language=javascript>alert('Usuario Ingresado Correctamente!!!');</script>");
            }
        }
        catch (Exception ex) { Response.Write(ex); }
        finally
        {
            Response.Redirect("TIDPACIENTE.aspx");
            db.Dispose();
        }*/
        
    }
    protected void txtCedulaPaciente_TextChanged(object sender, EventArgs e)
    {
      //  buscarPaciente();//Se llama 
        try
        {
            string existencia = "";
            string cedula = txtCedulaPaciente.Text;
            var datos = db.sp_Selecionar_Paciente(cedula);
            foreach (sp_Selecionar_PacienteResult resultado in datos)
            { //Se carga los especio con los datos
                existencia = resultado.algo;
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
                txtFechaNaci.Text = String.Format("{0:yyyy-MM-dd}", resultado.FEC_NACIMIENTO);
                /*
                txtNumBlo.Text = resultado.CUBICULO_EXPEDIENTE;
                txtBloqueExpediente.Text = resultado.BLOQUE_EXPEDIENTE;
                txtFechaCreacionExpediente.Text =Convert.ToString(resultado.FECHA_CREACION_EXPEDIENTE);
                txtObserExpe.Text = resultado.OBSERVACION2;
                txtEstadoExpediente.Value = resultado.ESTADO_EXPEDIENTE;*/
            }

            if (existencia == "Existe")
            {
                txtNombrePaciente.Enabled = false;
                txtApellido1Paciente.Enabled = false;
                txtApellido2Paciente.Enabled = false;
                txtEstCilPacient.Disabled = false;
              
                txtGenPacient.Disabled = false;
                txtFechaNaci.Enabled = false;
            }
            else
            {
                Response.Write("<script language=javascript>alert('La cédula no existe!!');</script>");
                limpiarCampos();
                txtNombrePaciente.Focus();
            }
            txtNombrePaciente.Focus();
        }
        catch (Exception ex)
        {
            Response.Write("<script language=javascript>alert('Error " + ex + "!');</script>");

        }
        finally
        {
            //Libera los recursos
            txtNombrePaciente.Focus();
        }
        txtNombrePaciente.Focus();
        }//Listo
   
    public void imprimir(){
        try
        {
            llenarInformacionPaciente();
            string datos = txtCedulaPaciente.Text;
            // Creamos el documento con el tamaño de página tradicional
            Document doc = new Document(PageSize.LETTER);
            // Indicamos donde vamos a guardar el documento
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment; filename="+datos+".pdf");
            PdfWriter writer = PdfWriter.GetInstance(doc, Response.OutputStream/*new FileStream(@"C:\" + datos + ".pdf", FileMode.Create)*/);

            // Le colocamos el título y el autor
            // **Nota: Esto no será visible en el documento
            doc.AddTitle("TID");
            // Abrimos el archivo
            doc.Open();
            // Creamos el tipo de Font que vamos utilizar
            iTextSharp.text.Font _standardFont = new iTextSharp.text.Font(iTextSharp.text.Font.FontFamily.HELVETICA, 12, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);
            iTextSharp.text.Image PNG = iTextSharp.text.Image.GetInstance("C:\\Users\\Lester\\Documents\\Visual Studio 2013\\Projects\\TIDCCSS\\TIDCCSSBE\\pdf\\logoPDF.png");
            PNG.ScaleToFit(340f, 180f);
            PNG.Alignment = iTextSharp.text.Image.ALIGN_CENTER;
            doc.Add(PNG);
            // Escribimos el encabezamiento en el documento
            doc.Add(new Paragraph("Tarjeta Índice del Paciente."));
            doc.Add(new Paragraph("Fecha de la Creación: " + Convert.ToString(DateTime.Now)));
            doc.Add(new Paragraph("Responsable: " + TID.PiCedFun));
            doc.Add(Chunk.NEWLINE);

            // Creamos una tabla que contendrá el nombre, apellido y país
            // de nuestros visitante.
            PdfPTable tblPrueba = new PdfPTable(2);
            // tblPrueba.WidthPercentage = 100;

            // Configuramos el título de las columnas de la tabla
            PdfPCell clDatos = new PdfPCell(new Phrase("Datos", _standardFont));
            //clDatos.BorderWidth = 0;
            //clDatos.BorderWidthBottom = 0.75f;

            PdfPCell clPaciente = new PdfPCell(new Phrase("Paciente", _standardFont));
            //clPaciente.BorderWidth = 0;
            //clPaciente.BorderWidthBottom = 0.75f;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);

            //----------------------------------//
            // Llenamos la tabla con información
            clDatos = new PdfPCell(new Phrase("Identificación: ", _standardFont));
            //clDatos.BorderWidth = 0;

            clPaciente = new PdfPCell(new Phrase(txtCedulaPaciente.Text, _standardFont));
            //clPaciente.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);
            //---------------------------------//
            clDatos = new PdfPCell(new Phrase("Nombre: ", _standardFont));
            //clDatos.BorderWidth = 0;

            clPaciente = new PdfPCell(new Phrase(txtNombrePaciente.Text, _standardFont));
            //clPaciente.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);
            //---------------------------------//
            clDatos = new PdfPCell(new Phrase("Primer Apellido: ", _standardFont));
            //clDatos.BorderWidth = 0;

            clPaciente = new PdfPCell(new Phrase(txtApellido1Paciente.Text, _standardFont));
            //clPaciente.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);
            //---------------------------------//
            clDatos = new PdfPCell(new Phrase("Segundo Apellido: ", _standardFont));
            //clDatos.BorderWidth = 0;

            clPaciente = new PdfPCell(new Phrase(txtApellido2Paciente.Text, _standardFont));
            //clPaciente.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);
            //---------------------------------//
            clDatos = new PdfPCell(new Phrase("Genero: ", _standardFont));
            //clDatos.BorderWidth = 0;

            clPaciente = new PdfPCell(new Phrase(txtGenPacient.Value, _standardFont));
            //clPaciente.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);
            //---------------------------------//
            clDatos = new PdfPCell(new Phrase("Estado Civil: ", _standardFont));
            //clDatos.BorderWidth = 0;

            clPaciente = new PdfPCell(new Phrase(txtEstCilPacient.Value, _standardFont));
            //clPaciente.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);
            //---------------------------------//
            clDatos = new PdfPCell(new Phrase("Fecha de Nacimiento: ", _standardFont));
            //clDatos.BorderWidth = 0;

            clPaciente = new PdfPCell(new Phrase(txtFechaNaci.Text, _standardFont));
            //clPaciente.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clDatos);
            tblPrueba.AddCell(clPaciente);
            // Finalmente, añadimos la tabla al documento PDF y cerramos el documento
            doc.Add(tblPrueba);

            doc.Close();
            writer.Close();
          //  System.Diagnostics.Process.Start("C:\\" + datos + ".pdf");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }//Listo!!
    }
  
