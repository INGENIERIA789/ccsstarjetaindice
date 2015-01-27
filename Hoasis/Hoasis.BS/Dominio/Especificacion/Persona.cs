using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Especificacion
{
    public class Persona
    {
        public bool AutenticarPersona(string cedula, string contraseña, ref DataSet ds)
        {
            Validacion.Persona Vp = new Validacion.Persona();

            Repositorio.Persona Rp = new Repositorio.Persona();
            try
            {
                if (Vp.ValidarUsuario(cedula, contraseña))
                    if (Rp.AutenticarPersona(cedula, contraseña, ref ds))
                        return true;
                    else
                        return false;
                return false;
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                return false;
            }
        }
        public bool ExistePersona(string cedula, ref DataSet ds)
        {
            Validacion.Persona Vp = new Validacion.Persona();

            Repositorio.Persona Rp = new Repositorio.Persona();
            try
            {
                if (Vp.validarExistencia(cedula))
                {
                    Rp.ObtenerPersona(cedula, ref ds);
                    return true;
                }
                else
                    return false;
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                return false;
            }
        }
    }
}
