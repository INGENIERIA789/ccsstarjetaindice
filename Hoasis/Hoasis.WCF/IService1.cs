using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Hoasis.WCF
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        Boolean AutenticarPersona(string cedula, string contra, ref DataSet ds);
        [OperationContract]
        void ExistePersona(string cedula, ref DataSet ds);
        [OperationContract]
        void LlenarGrillaMedicamentos(string fecha, string cedula, ref DataSet ds);
        [OperationContract]
        void llenarGridMedicamentos(string cedula, ref DataSet ds);
        [OperationContract]
        void registrarusuarios(string cedula, string nombre, string Papellido, string Sapellido, string telefono, string direccion,
            string email, string nacimiento,  ref DataSet ds);
        //Fabrizio
        [OperationContract]
        void LlenarGrilla(string cedula, ref DataSet ds);
        [OperationContract]
        Boolean ActivarPaciente(string cedula, int estado, string pass);
        [OperationContract]
        void DesactivarPaciente(string cedula, int estado);
        [OperationContract]
        Boolean cargarXML(Stream xml);
        [OperationContract]
        void GridActivacion(ref DataSet ds);
        [OperationContract]
        string generarPass();
        //Max
        [OperationContract]
        void actualizarconsulta(string cod, string calificacion, string fecha, string estad,string respuesta);
        [OperationContract]
        void CargarConsult(string cod,ref DataSet ds);
        //Cargar Persona
        [OperationContract]
        void Cargar_Persona(string Cedula, ref DataSet ds);
        //Cargar Persona
        //E-Mail      
        [OperationContract]
        void enviar_correo(string pass, string consulta, string correoPARA, string correoDE, string encabezado);
        //E-Mail
        //Farmacia
        [OperationContract]
        void VerConsultaPorEstado(string estado, ref DataSet ds);

        [OperationContract]
        void VerConsulta(ref DataSet ds);

        [OperationContract]
        void IngresarConsulta(string cedula, string edad, string peso, string nombre, string PApellido
           , string SApellido, DateTime fechaConsulta, string consulta, string estado_consulta,
           string codigoMedi, string nombreMedi);
        //Farmacia
        //Medicamentos
        [OperationContract]
        void BuscarMedicamento(string consulta, ref DataSet ds);
        [OperationContract]
        void MostrarMedicamentos(ref DataSet ds);
        //Medicamentos
        //Max
        //Maria
        [OperationContract]
        void ListarPacientes(ref DataSet ds);
        [OperationContract]
        Boolean ActualizarContraseña(string cedula, string actual, string nueva, string renueva);
        [OperationContract]
        bool ActualizarPaciente(string ced, string domicilio, string tel, string email);
        [OperationContract]
        void ObtenerDatosPaciente(string cedula, ref DataSet ds);

        [OperationContract]
        void BuscarCitas(string fecha, int cedula, ref DataSet ds);
        [OperationContract]
        void ReprogramarCitas(string fecha, int cedula, ref DataSet ds);
        [OperationContract]
        void CancelarCitas(string fecha, int cedula, ref DataSet ds);
        [OperationContract]
        void llenarGridCitas(string a, ref DataSet ds);


        [OperationContract]
        Boolean RegenerarContraseña(string cedula, string nueva);
        [OperationContract]
        void FiltrarPacientes(string cedula, ref DataSet ds);
    }
}
