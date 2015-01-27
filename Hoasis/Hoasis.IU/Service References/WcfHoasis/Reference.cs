﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.17929
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Hoasis.IU.WcfHoasis {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="WcfHoasis.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/AutenticarPersona", ReplyAction="http://tempuri.org/IService1/AutenticarPersonaResponse")]
        bool AutenticarPersona(string cedula, string contra, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ExistePersona", ReplyAction="http://tempuri.org/IService1/ExistePersonaResponse")]
        void ExistePersona(string cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/LlenarGrillaMedicamentos", ReplyAction="http://tempuri.org/IService1/LlenarGrillaMedicamentosResponse")]
        void LlenarGrillaMedicamentos(string fecha, string cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/llenarGridMedicamentos", ReplyAction="http://tempuri.org/IService1/llenarGridMedicamentosResponse")]
        void llenarGridMedicamentos(string cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/registrarusuarios", ReplyAction="http://tempuri.org/IService1/registrarusuariosResponse")]
        void registrarusuarios(string cedula, string nombre, string Papellido, string Sapellido, string telefono, string direccion, string email, string nacimiento, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/LlenarGrilla", ReplyAction="http://tempuri.org/IService1/LlenarGrillaResponse")]
        void LlenarGrilla(string cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ActivarPaciente", ReplyAction="http://tempuri.org/IService1/ActivarPacienteResponse")]
        bool ActivarPaciente(string cedula, int estado, string pass);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/DesactivarPaciente", ReplyAction="http://tempuri.org/IService1/DesactivarPacienteResponse")]
        void DesactivarPaciente(string cedula, int estado);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/cargarXML", ReplyAction="http://tempuri.org/IService1/cargarXMLResponse")]
        bool cargarXML(System.IO.Stream xml);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GridActivacion", ReplyAction="http://tempuri.org/IService1/GridActivacionResponse")]
        void GridActivacion(ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/generarPass", ReplyAction="http://tempuri.org/IService1/generarPassResponse")]
        string generarPass();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/actualizarconsulta", ReplyAction="http://tempuri.org/IService1/actualizarconsultaResponse")]
        void actualizarconsulta(string cod, string calificacion, string fecha, string estad, string respuesta);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/CargarConsult", ReplyAction="http://tempuri.org/IService1/CargarConsultResponse")]
        void CargarConsult(string cod, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Cargar_Persona", ReplyAction="http://tempuri.org/IService1/Cargar_PersonaResponse")]
        void Cargar_Persona(string Cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/enviar_correo", ReplyAction="http://tempuri.org/IService1/enviar_correoResponse")]
        void enviar_correo(string pass, string consulta, string correoPARA, string correoDE, string encabezado);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/VerConsultaPorEstado", ReplyAction="http://tempuri.org/IService1/VerConsultaPorEstadoResponse")]
        void VerConsultaPorEstado(string estado, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/VerConsulta", ReplyAction="http://tempuri.org/IService1/VerConsultaResponse")]
        void VerConsulta(ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/IngresarConsulta", ReplyAction="http://tempuri.org/IService1/IngresarConsultaResponse")]
        void IngresarConsulta(string cedula, string edad, string peso, string nombre, string PApellido, string SApellido, System.DateTime fechaConsulta, string consulta, string estado_consulta, string codigoMedi, string nombreMedi);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/BuscarMedicamento", ReplyAction="http://tempuri.org/IService1/BuscarMedicamentoResponse")]
        void BuscarMedicamento(string consulta, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/MostrarMedicamentos", ReplyAction="http://tempuri.org/IService1/MostrarMedicamentosResponse")]
        void MostrarMedicamentos(ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ListarPacientes", ReplyAction="http://tempuri.org/IService1/ListarPacientesResponse")]
        void ListarPacientes(ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ActualizarContraseña", ReplyAction="http://tempuri.org/IService1/ActualizarContraseñaResponse")]
        bool ActualizarContraseña(string cedula, string actual, string nueva, string renueva);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ActualizarPaciente", ReplyAction="http://tempuri.org/IService1/ActualizarPacienteResponse")]
        bool ActualizarPaciente(string ced, string domicilio, string tel, string email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ObtenerDatosPaciente", ReplyAction="http://tempuri.org/IService1/ObtenerDatosPacienteResponse")]
        void ObtenerDatosPaciente(string cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/BuscarCitas", ReplyAction="http://tempuri.org/IService1/BuscarCitasResponse")]
        void BuscarCitas(string fecha, int cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ReprogramarCitas", ReplyAction="http://tempuri.org/IService1/ReprogramarCitasResponse")]
        void ReprogramarCitas(string fecha, int cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/CancelarCitas", ReplyAction="http://tempuri.org/IService1/CancelarCitasResponse")]
        void CancelarCitas(string fecha, int cedula, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/llenarGridCitas", ReplyAction="http://tempuri.org/IService1/llenarGridCitasResponse")]
        void llenarGridCitas(string a, ref System.Data.DataSet ds);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/RegenerarContraseña", ReplyAction="http://tempuri.org/IService1/RegenerarContraseñaResponse")]
        bool RegenerarContraseña(string cedula, string nueva);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/FiltrarPacientes", ReplyAction="http://tempuri.org/IService1/FiltrarPacientesResponse")]
        void FiltrarPacientes(string cedula, ref System.Data.DataSet ds);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : Hoasis.IU.WcfHoasis.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<Hoasis.IU.WcfHoasis.IService1>, Hoasis.IU.WcfHoasis.IService1 {
        
        public Service1Client() {
        }
        
        public Service1Client(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1Client(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool AutenticarPersona(string cedula, string contra, ref System.Data.DataSet ds) {
            return base.Channel.AutenticarPersona(cedula, contra, ref ds);
        }
        
        public void ExistePersona(string cedula, ref System.Data.DataSet ds) {
            base.Channel.ExistePersona(cedula, ref ds);
        }
        
        public void LlenarGrillaMedicamentos(string fecha, string cedula, ref System.Data.DataSet ds) {
            base.Channel.LlenarGrillaMedicamentos(fecha, cedula, ref ds);
        }
        
        public void llenarGridMedicamentos(string cedula, ref System.Data.DataSet ds) {
            base.Channel.llenarGridMedicamentos(cedula, ref ds);
        }
        
        public void registrarusuarios(string cedula, string nombre, string Papellido, string Sapellido, string telefono, string direccion, string email, string nacimiento, ref System.Data.DataSet ds) {
            base.Channel.registrarusuarios(cedula, nombre, Papellido, Sapellido, telefono, direccion, email, nacimiento, ref ds);
        }
        
        public void LlenarGrilla(string cedula, ref System.Data.DataSet ds) {
            base.Channel.LlenarGrilla(cedula, ref ds);
        }
        
        public bool ActivarPaciente(string cedula, int estado, string pass) {
            return base.Channel.ActivarPaciente(cedula, estado, pass);
        }
        
        public void DesactivarPaciente(string cedula, int estado) {
            base.Channel.DesactivarPaciente(cedula, estado);
        }
        
        public bool cargarXML(System.IO.Stream xml) {
            return base.Channel.cargarXML(xml);
        }
        
        public void GridActivacion(ref System.Data.DataSet ds) {
            base.Channel.GridActivacion(ref ds);
        }
        
        public string generarPass() {
            return base.Channel.generarPass();
        }
        
        public void actualizarconsulta(string cod, string calificacion, string fecha, string estad, string respuesta) {
            base.Channel.actualizarconsulta(cod, calificacion, fecha, estad, respuesta);
        }
        
        public void CargarConsult(string cod, ref System.Data.DataSet ds) {
            base.Channel.CargarConsult(cod, ref ds);
        }
        
        public void Cargar_Persona(string Cedula, ref System.Data.DataSet ds) {
            base.Channel.Cargar_Persona(Cedula, ref ds);
        }
        
        public void enviar_correo(string pass, string consulta, string correoPARA, string correoDE, string encabezado) {
            base.Channel.enviar_correo(pass, consulta, correoPARA, correoDE, encabezado);
        }
        
        public void VerConsultaPorEstado(string estado, ref System.Data.DataSet ds) {
            base.Channel.VerConsultaPorEstado(estado, ref ds);
        }
        
        public void VerConsulta(ref System.Data.DataSet ds) {
            base.Channel.VerConsulta(ref ds);
        }
        
        public void IngresarConsulta(string cedula, string edad, string peso, string nombre, string PApellido, string SApellido, System.DateTime fechaConsulta, string consulta, string estado_consulta, string codigoMedi, string nombreMedi) {
            base.Channel.IngresarConsulta(cedula, edad, peso, nombre, PApellido, SApellido, fechaConsulta, consulta, estado_consulta, codigoMedi, nombreMedi);
        }
        
        public void BuscarMedicamento(string consulta, ref System.Data.DataSet ds) {
            base.Channel.BuscarMedicamento(consulta, ref ds);
        }
        
        public void MostrarMedicamentos(ref System.Data.DataSet ds) {
            base.Channel.MostrarMedicamentos(ref ds);
        }
        
        public void ListarPacientes(ref System.Data.DataSet ds) {
            base.Channel.ListarPacientes(ref ds);
        }
        
        public bool ActualizarContraseña(string cedula, string actual, string nueva, string renueva) {
            return base.Channel.ActualizarContraseña(cedula, actual, nueva, renueva);
        }
        
        public bool ActualizarPaciente(string ced, string domicilio, string tel, string email) {
            return base.Channel.ActualizarPaciente(ced, domicilio, tel, email);
        }
        
        public void ObtenerDatosPaciente(string cedula, ref System.Data.DataSet ds) {
            base.Channel.ObtenerDatosPaciente(cedula, ref ds);
        }
        
        public void BuscarCitas(string fecha, int cedula, ref System.Data.DataSet ds) {
            base.Channel.BuscarCitas(fecha, cedula, ref ds);
        }
        
        public void ReprogramarCitas(string fecha, int cedula, ref System.Data.DataSet ds) {
            base.Channel.ReprogramarCitas(fecha, cedula, ref ds);
        }
        
        public void CancelarCitas(string fecha, int cedula, ref System.Data.DataSet ds) {
            base.Channel.CancelarCitas(fecha, cedula, ref ds);
        }
        
        public void llenarGridCitas(string a, ref System.Data.DataSet ds) {
            base.Channel.llenarGridCitas(a, ref ds);
        }
        
        public bool RegenerarContraseña(string cedula, string nueva) {
            return base.Channel.RegenerarContraseña(cedula, nueva);
        }
        
        public void FiltrarPacientes(string cedula, ref System.Data.DataSet ds) {
            base.Channel.FiltrarPacientes(cedula, ref ds);
        }
    }
}
