using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Validaciones
{
    public class ActualizacionPaciente
    {
        public bool actualizarPaciente(string tel) {
            
            if (tel.Length == 8)
                return true;
            else
                
                return false;
        }
        public bool validarContraseña(string actual) {
            if (actual == null)
                return false;
            else
                return true;
                       
        }
        public bool validarNuevaContraseña(string contra, string recontra) {
            if (contra.Equals(recontra) && contra!= null && recontra!= null)
                return true;
            else
                return false;
        }
    }
}
