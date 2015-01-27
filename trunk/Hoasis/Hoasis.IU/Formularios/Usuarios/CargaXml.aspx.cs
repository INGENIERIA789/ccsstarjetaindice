using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoasis.IU.Formularios.Usuarios
{
    public partial class CargaXml : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //string extension = FUXML.FileName;
            //if (Path.GetExtension(extension) == ".xml")
            //{
            //    WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
            //    if (Ser.cargarXML(FUXML.PostedFile.InputStream))
            //        Response.Write("<script>window.alert('Guardado con exito');</script>");
            //    else
            //        Response.Write("<script>window.alert('No se pudo guardar');</script>");
            //}
            //else
            //    Response.Write("<script>window.alert('Archivo no valido');</script>");            
        }

        protected void btnEnviar_Click1(object sender, EventArgs e)
        {
            string extension = FUXML.FileName;
            if (Path.GetExtension(extension) == ".xml")
            {
                WcfHoasis.Service1Client Ser = new WcfHoasis.Service1Client();
                if (Ser.cargarXML(FUXML.PostedFile.InputStream))
                    Response.Write("<script>window.alert('Guardado con exito');</script>");
                else
                    Response.Write("<script>window.alert('No se pudo guardar');</script>");
            }
            else
                Response.Write("<script>window.alert('Archivo no valido');</script>");  
        }
    }
}