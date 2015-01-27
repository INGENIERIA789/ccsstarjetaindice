using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Conexion
{
    public class Conexion
    {
        string strcn = @"Data Source=DELL;Initial Catalog=BD_HOASIS;Integrated Security=True";
        
        public string getconexion()
        {
            return strcn;
        }
        
    }
}
