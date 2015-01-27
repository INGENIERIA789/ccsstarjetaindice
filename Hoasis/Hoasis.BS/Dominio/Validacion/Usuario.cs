using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Validacion
{
    public class Usuario
    {
        public bool validarusuario(string cedula, string nombre, string Papellido, string Sapellido, string nacimiento)
        {
            try
            {
                if (cedula == null || nombre == null || Papellido == null || Sapellido == null || nacimiento == null)
                    throw new Exception("datos nulos");
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return true;
        }
    }
}
