using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Especificacion
{
    public class Coordinador
    {

        public void CargarConsul(string cod, ref DataSet ds)
        {
            Dominio.Repositorio.ConsultaFarmacia co = new Repositorio.ConsultaFarmacia();
            co.CargarConsult(cod, ref ds);
        }

        public void actualizaconsulta(string cod,string califi, string fecha,string estado,string respuesta)
        {
            Dominio.Repositorio.ConsultaFarmacia co = new Repositorio.ConsultaFarmacia();
            co.actualizarConsulta(cod, califi, fecha, estado,respuesta);
        }

        public void enviar_correo(string pass, string consulta, string correoPARA, string correoDE, string encabezado)
        {
            Dominio.Acciones.Enviar_Correos enviar = new Acciones.Enviar_Correos();
            enviar.enviar_correo(pass, consulta, correoPARA, correoDE, encabezado);
        }

        public void Cargar_Persona(string Cedula, ref DataSet ds)
        {
            Dominio.Repositorio.ConsultaFarmacia cons = new Repositorio.ConsultaFarmacia();
            cons.Cargar_Persona(Cedula, ref ds);
        }

        public void Buscar_Medicamento(string Consulta, ref DataSet ds)
        {
            Dominio.Repositorio.ConsultaFarmacia Ra = new Repositorio.ConsultaFarmacia();
            Ra.Buscar_Medicamento(Consulta, ref ds);
        }

        public void MostrarMedicamentos(ref DataSet ds)
        {
            Dominio.Repositorio.ConsultaFarmacia Ra = new Repositorio.ConsultaFarmacia();
            Ra.Mostrar_Medicamentos(ref ds);
        }

        public void VerConsultaPorEstado(string estado, ref DataSet ds)
        {
            Dominio.Repositorio.ConsultaFarmacia Ra = new Repositorio.ConsultaFarmacia();
            Ra.Ver_Consultas_Pendientes(estado, ref ds);
        }

        public void VerConsulta(ref DataSet ds)
        {
            Dominio.Repositorio.ConsultaFarmacia Ra = new Repositorio.ConsultaFarmacia();
            Ra.Ver_Consultas(ref ds);
        }


        public void IngresarConsulta(string cedula, string edad, string peso, string nombre, string PApellido
            , string SApellido, DateTime fechaConsulta, string consulta, string estado_consulta,
            string codigoMedi, string nombreMedi)
        {
            Dominio.Repositorio.ConsultaFarmacia Ra = new Repositorio.ConsultaFarmacia();
            Ra.Ingresar_Consulta(cedula, edad, peso, nombre, PApellido
            , SApellido, fechaConsulta, consulta, estado_consulta,
             codigoMedi, nombreMedi);
        }

        public void LlenarGrilla(string cedula, ref DataSet ds)
        {
            Dominio.Repositorio.Activacion Ra = new Repositorio.Activacion();
            Ra.LlenarGrilla(cedula, ref ds);
        }

        public void GridActivacion(ref DataSet ds)
        {
            Repositorio.Activacion Ra = new Repositorio.Activacion();
            Ra.llenarGrid(ref ds);
        }

        public string GenerarPass()
        {
            Dominio.Acciones.Activacion Aa = new Dominio.Acciones.Activacion();
            return Aa.Contraseña();
        }
        public bool cargarXML(String xml)
        {
            Repositorio.Crear Rc = new Repositorio.Crear();
            Validacion.ValidarXml Vv = new Validacion.ValidarXml();
            try
            {
                if (Vv.ValidacionXml(xml))
                    if (Rc.cargarXML(xml))
                        return true;
                    else
                        return false;
                else
                    return false;
            }
            catch (Exception ex)
            {
                throw ex;

            }

        }
        public bool activarPaciente(string cedula, int estado, string pass)
        {
            Repositorio.Activacion Ra = new Repositorio.Activacion();
            if (Ra.ActivarPaciente(cedula, estado, pass))
                return true;
            else
                return false;
        }
        public void desactivarPaciente(string cedula, int estado)
        {
            Repositorio.Activacion Ra = new Repositorio.Activacion();
            Ra.DesactivarPaciente(cedula, estado);
        }

        public bool actualizarPaciente(string ced, string domicilio, string tel, string email)
        {
            Repositorio.ActualizacionPaciente Ra = new Repositorio.ActualizacionPaciente();

            if (Ra.actualizarPaciente(ced, domicilio, tel, email))
                return true;
            else
                return false;

        }
        public void DatosPaciente(string ced, ref DataSet ds)
        {
            Repositorio.ActualizacionPaciente Ra = new Repositorio.ActualizacionPaciente();
            Ra.DatosPaciente(ced, ref ds);
        }
        public void ListarPacientes(ref DataSet ds)
        {
            Repositorio.Paciente Rp = new Repositorio.Paciente();
            Rp.ListarPacientes(ref ds);
        }

        public bool CambioContraseña(string ced, string actual, string nueva, string renueva)
        {
            Validaciones.ActualizacionPaciente Va = new Validaciones.ActualizacionPaciente();
            Repositorio.ActualizacionPaciente Ra = new Repositorio.ActualizacionPaciente();

            if (Va.validarContraseña(actual))
                if (Va.validarNuevaContraseña(nueva, renueva))
                    if (Ra.validarActual(ced, actual))
                        if (Ra.ActualizarContraseña(ced, nueva))
                            return true;
                        else
                            return false;
                    else
                        return false;
                else
                    return false;
            else
                return false;

        }
        public bool RegenerarContraseña(string ced, string nueva)
        {
            Repositorio.ActualizacionPaciente Ra = new Repositorio.ActualizacionPaciente();
            if (Ra.ActualizarContraseña(ced, nueva))
                return true;
            else
                return false;
        }
        public void FiltrarPacientes(string cedula, ref DataSet ds)
        {
            Dominio.Repositorio.Activacion Ra = new Repositorio.Activacion();
            Ra.FiltrarPacientes(cedula, ref ds);
        }

    }
}