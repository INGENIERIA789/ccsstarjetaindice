<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Hoasis.IU.Formularios.Farmacia.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
       <div>
          
              sb.Append("<table align='center' width='100%' cellspacing='0' cellpadding='3'>");
                   sb.Append("<tr><td rowspan='1' colspan='1'><img height='65%' width='65%' src='http://localhost:2173/Imagenes/CCSS.gif' /></td>");
                   sb.Append("<td align='left' colspan='2'><b>HOSPITAL DE LA ANEXIÓN</b><br /><b>DEPARTAMENTO DE FARMACIA</b><br /><b>Tel 26-85-84-56 - Fax 26-85-54-60</b></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan='2' align='left' ><b>Señor(a).</b><br />" + nombre + " " + PAapellido + " " + SAapellido + "</td>");
                   sb.Append("<td colspan='1' align='right' ><b>Nicoya,");
                   sb.Append(DateTime.Now.Day + " - " + DateTime.Now.ToString("MMMM", CultureInfo.CreateSpecificCulture("es-MX")) + " - " + DateTime.Now.Year + "</b><br /><b>FHLA-</b>");
                   sb.Append("<b>" + codigo + "</b><b>-</b><b>" + DateTime.Now.ToString("yy", CultureInfo.CreateSpecificCulture("es-MX")) + "</b></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan='3' align='center'>___________________________________________________________________________________</td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan ='3' align='left' ><b>ASUNTO:</b></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan='3' align='left'>Reciba un cordial saludo. En referencia a su consulta</td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan='3' align='left'>" + Pregunta + "</td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan='3' align='left'>me complace indicarle que prontamente estaremos poniendo en funcionamiento este servicio. con la ayuda de alguna horas extra para la implementacion de algunas tecnologias.</td></tr>");
                   sb.Append("<tr><td colspan = '3'></td></tr><tr><td colspan = '3'></td></tr>");
                   sb.Append("<tr><td colspan='3' align='left'>Dr(a).</td></tr>");
                   sb.Append("<tr><td colspan='3' align='left'>Jefe de Farmacia H.L.A</td></tr>");
                   sb.Append("</table>");

    </div>
    </form>
</body>
</html>
