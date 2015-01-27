using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Hoasis.BS.Dominio.Acciones
{
    public class Enviar_Correos
    {
        public void enviar_correo(string pass, string consulta, string correoPARA, string correoDE, string encabezado)
        {          
            MailMessage msg = new MailMessage();
            SmtpClient correo = new SmtpClient();
            msg.To.Add(correoPARA);
            msg.From = new MailAddress(correoDE);
            msg.Body = consulta;
            msg.IsBodyHtml = true;
            msg.Subject = encabezado;
            msg.BodyEncoding = Encoding.UTF8; //Indica la codificacion del email
            msg.Priority = MailPriority.High;
            correo.UseDefaultCredentials = false;
            correo.Credentials = new NetworkCredential(correoDE, pass);
            correo.Host = "smtp.gmail.com";
            correo.Port = 587;
            correo.EnableSsl = true;
            correo.Send(msg);
        }
    }
}
