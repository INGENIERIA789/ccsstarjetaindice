using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Validacion
{
    public class Persona
    {
        public bool ValidarUsuario(string ced, string contra)
        {
            try
            {
                if (ced == null || contra == null)
                    throw new Exception("Valores nulos");
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return true;
        }
        public bool validarExistencia(string ced)
        {
            try
            {
                if (ced == null)
                {
                    throw new Exception("no existe usuario");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return true;
        }
    }
}
