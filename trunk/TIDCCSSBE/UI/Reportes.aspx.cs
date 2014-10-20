using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp;
using iTextSharp.xmp;
using iTextSharp.text.pdf;
using System.IO;

public partial class Reportes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string datos = "prueba";
            // Creamos el documento con el tamaño de página tradicional
            Document doc = new Document(PageSize.LETTER);
            // Indicamos donde vamos a guardar el documento
            PdfWriter writer = PdfWriter.GetInstance(doc,
                                        new FileStream(@"C:\" + datos + ".pdf", FileMode.Create));

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
            doc.Add(new Paragraph("Tarjeta Índice del Paciente: "));
            doc.Add(new Paragraph("Fecha de la Creación: "));
            doc.Add(new Paragraph("Responsable: "));
            doc.Add(Chunk.NEWLINE);

            // Creamos una tabla que contendrá el nombre, apellido y país
            // de nuestros visitante.
            PdfPTable tblPrueba = new PdfPTable(2);
           // tblPrueba.WidthPercentage = 100;

            // Configuramos el título de las columnas de la tabla
            PdfPCell clNombre = new PdfPCell(new Phrase("Datos", _standardFont));
            //clNombre.BorderWidth = 0;
            //clNombre.BorderWidthBottom = 0.75f;

            PdfPCell clApellido = new PdfPCell(new Phrase("Paciente", _standardFont));
            //clApellido.BorderWidth = 0;
            //clApellido.BorderWidthBottom = 0.75f;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clNombre);
            tblPrueba.AddCell(clApellido);


            // Llenamos la tabla con información
            clNombre = new PdfPCell(new Phrase("Identificación", _standardFont));
            //clNombre.BorderWidth = 0;

            clApellido = new PdfPCell(new Phrase("ALGO", _standardFont));
            //clApellido.BorderWidth = 0;

            // Añadimos las celdas a la tabla
            tblPrueba.AddCell(clNombre);
            tblPrueba.AddCell(clApellido);
            // Finalmente, añadimos la tabla al documento PDF y cerramos el documento
            doc.Add(tblPrueba);

            doc.Close();
            writer.Close();
            System.Diagnostics.Process.Start("C:\\" + datos + ".pdf");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}