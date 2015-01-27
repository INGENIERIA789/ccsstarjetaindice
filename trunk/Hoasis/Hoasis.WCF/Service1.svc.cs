using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using Hoasis.BS.Dominio.Especificacion;
using System.IO;
using System.Xml;
namespace Hoasis.WCF
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Service1 : IService1
    {
        bool IService1.AutenticarPersona(string ced, string contra, ref DataSet ds)
        {
            BS.Dominio.Especificacion.Persona Es = new BS.Dominio.Especificacion.Persona();
            return Es.AutenticarPersona(ced, contra, ref ds);
        }
        //consulta por fecha los medicamentos
        void IService1.LlenarGrillaMedicamentos(string fecha, string cedula, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Farmacia Es = new BS.Dominio.Especificacion.Farmacia();
            Es.LlenarGrillaMedicamentos(fecha, cedula, ref ds);
        }
        //trae los medicamentos del usuario autenticado
        void IService1.llenarGridMedicamentos(string cedula, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Farmacia Es = new BS.Dominio.Especificacion.Farmacia();
            Es.llenarGridMedicamentos(cedula, ref ds);
        }
        //trae los datos de la persona
        void IService1.ExistePersona(string cedula, ref DataSet ds)
        {
            BS.Dominio.Especificacion.Persona Es = new BS.Dominio.Especificacion.Persona();
            Es.ExistePersona(cedula, ref ds);
        }
        //envia los datos del usuario
        void IService1.registrarusuarios(string cedula, string nombre, string Papellido, string Sapellido, string telefono, string direccion, string email, string nacimiento, ref DataSet ds)
        {
            BS.Dominio.Especificacion.Usuario Es = new BS.Dominio.Especificacion.Usuario();
            Es.validarusuario(cedula, nombre, Papellido, Sapellido, telefono, direccion, email, nacimiento, ref ds);
        }

        //Fabrizio
        bool IService1.ActivarPaciente(string cedula, int estado, string pass)
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            return Es.activarPaciente(cedula, estado, pass);
        }

        void IService1.DesactivarPaciente(string cedula, int estado)
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            Es.desactivarPaciente(cedula, estado);
        }

        void IService1.LlenarGrilla(string cedula, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            Es.LlenarGrilla(cedula, ref ds);
        }
        void IService1.GridActivacion(ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            Es.GridActivacion(ref ds);
        }

        string IService1.generarPass()
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            return Es.GenerarPass();
        }
        bool IService1.cargarXML(Stream xml)
        {
            StreamReader reader = new StreamReader(xml);
            StringBuilder strB = new StringBuilder();
            XmlReader XMLr = XmlReader.Create(reader);
            while (XMLr.Read())
            {
                strB.Append(XMLr.ReadOuterXml());
            }
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            return Es.cargarXML(strB.ToString());
        }
        //Medicamentos
        void IService1.BuscarMedicamento(string consulta, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            Es.Buscar_Medicamento(consulta, ref ds);
        }

        void IService1.MostrarMedicamentos(ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            Es.MostrarMedicamentos(ref ds);

        }
        //Medicamentos
        //Farmacia
        void IService1.VerConsultaPorEstado(string estado, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Coordinador Es = new BS.Dominio.Especificacion.Coordinador();
            Es.VerConsultaPorEstado(estado, ref ds);
        }

        void IService1.VerConsulta(ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Coordinador es = new BS.Dominio.Especificacion.Coordinador();
            es.VerConsulta(ref ds);
        }

        void IService1.IngresarConsulta(string cedula, string edad, string peso, string nombre, string PApellido, string SApellido, DateTime fechaConsulta, string consulta, string estado_consulta, string codigoMedi, string nombreMedi)
        {
            BS.Dominio.Especificacion.Coordinador es = new BS.Dominio.Especificacion.Coordinador();
            es.IngresarConsulta(cedula, edad, peso, nombre, PApellido, SApellido, fechaConsulta, consulta, estado_consulta, codigoMedi, nombreMedi);
        }
        //Farmacia
        //EnviarEmail
        void IService1.enviar_correo(string pass, string consulta, string correoPARA, string correoDE, string encabezado)
        {
            BS.Dominio.Especificacion.Coordinador es = new BS.Dominio.Especificacion.Coordinador();
            es.enviar_correo(pass, consulta, correoPARA, correoDE, encabezado);
        }
        //EnviarEmail
        //Cargar Persona
        void IService1.Cargar_Persona(string Cedula, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Coordinador es = new BS.Dominio.Especificacion.Coordinador();
            es.Cargar_Persona(Cedula, ref ds);
        }
        //Cargar Persona
        //Max
        //Citas
        

        void IService1.CargarConsult(string cod, ref DataSet ds)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador es = new BS.Dominio.Especificacion.Coordinador();
            es.CargarConsul(cod, ref ds);
        }

        void IService1.actualizarconsulta(string cod, string calificacion, string fecha, string estad,string respuesta)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador es = new BS.Dominio.Especificacion.Coordinador();
            es.actualizaconsulta(cod,calificacion,fecha,estad,respuesta);
        }

        bool IService1.ActualizarPaciente(string ced, string domicilio, string tel, string email)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador Es = new Hoasis.BS.Dominio.Especificacion.Coordinador();
            return Es.actualizarPaciente(ced, domicilio, tel, email);
        }


        void IService1.ObtenerDatosPaciente(string cedula, ref System.Data.DataSet ds)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador Es = new Hoasis.BS.Dominio.Especificacion.Coordinador();
            Es.DatosPaciente(cedula, ref ds);
        }
        void IService1.ListarPacientes(ref System.Data.DataSet ds)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador Es = new Hoasis.BS.Dominio.Especificacion.Coordinador();
            Es.ListarPacientes(ref ds);
        }


        bool IService1.ActualizarContraseña(string cedula, string actual, string nueva, string renueva)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador Es = new Hoasis.BS.Dominio.Especificacion.Coordinador();
            return Es.CambioContraseña(cedula, actual, nueva, renueva);
        }

        void IService1.BuscarCitas(string fecha, int cedula, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Citas Es = new BS.Dominio.Especificacion.Citas();
            Es.BuscarCitas(fecha, cedula, ref ds);
        }
        void IService1.ReprogramarCitas(string fecha, int cedula, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Citas Es = new BS.Dominio.Especificacion.Citas();
            Es.ReprogramarCitas(fecha, cedula, ref ds);
        }

        void IService1.CancelarCitas(string fecha, int cedula, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Citas Es = new BS.Dominio.Especificacion.Citas();
            Es.CancelarCitas(fecha, cedula, ref ds);
        }

        void IService1.llenarGridCitas(string a, ref System.Data.DataSet ds)
        {
            BS.Dominio.Especificacion.Citas Es = new BS.Dominio.Especificacion.Citas();
            Es.llenarGridCitas(a, ref ds);
        }


        bool IService1.RegenerarContraseña(string cedula, string nueva)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador Es = new Hoasis.BS.Dominio.Especificacion.Coordinador();
            return Es.RegenerarContraseña(cedula, nueva);
        }


        void IService1.FiltrarPacientes(string cedula, ref DataSet ds)
        {
            Hoasis.BS.Dominio.Especificacion.Coordinador Es = new Hoasis.BS.Dominio.Especificacion.Coordinador();
            Es.FiltrarPacientes(cedula, ref ds);
        }       
    }
}
