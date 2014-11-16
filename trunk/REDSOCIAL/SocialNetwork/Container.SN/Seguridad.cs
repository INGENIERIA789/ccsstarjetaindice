using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace Container.SN
{
    public class seguridad
    {
        public String md5(String pass)
        {
            SHA1CryptoServiceProvider sp = new SHA1CryptoServiceProvider();
            String resultado = String.Empty;
            byte[] v1 = UTF8Encoding.UTF8.GetBytes(resultado);
            byte[] encriptado = sp.ComputeHash(v1);
            resultado = Convert.ToBase64String(encriptado);
            return resultado;
        }
    }
}
