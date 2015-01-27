using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Reflection;
using System.IO;
using System.Xml.Schema;
namespace Hoasis.BS.Dominio.Validacion
{
    public class ValidarXml
    {
        public bool ValidacionXml(string xml)
        {
            StringReader StrR = new StringReader(xml);
            XmlReader XmlRead = XmlReader.Create(StrR);
            Assembly ensamblado = Assembly.GetExecutingAssembly();
            Stream XsdStream = ensamblado.GetManifestResourceStream("Hoasis.BS.Dominio.Validacion.validar.xsd");
            XmlReader reader = XmlReader.Create(XsdStream);
            int Error = 0;
            XmlReaderSettings xmlSettings = new XmlReaderSettings();
            xmlSettings.Schemas.Add(null, reader);
            xmlSettings.ValidationType = ValidationType.Schema;
            xmlSettings.ValidationEventHandler += (objeto, e) =>
            {
                if (e.Severity == XmlSeverityType.Warning)
                {
                    Console.Write("WARNING: ");
                    Console.WriteLine(e.Message);
                }
                else if (e.Severity == XmlSeverityType.Error)
                {
                    Error++;
                    Console.Write("ERROR: ");
                    Console.WriteLine(e.Message);
                }
            };

            try
            {
                XmlReader XmlR = XmlReader.Create(XmlRead, xmlSettings);
                while (reader.Read()) ;

                return true;

            }
            catch (Exception ex)
            {
                return false;
            }
            return Error > 0 ? false : true;

        }
    }
}
