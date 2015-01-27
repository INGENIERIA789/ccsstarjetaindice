using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Especificacion
{
    public class Usuario
    {
        public void validarusuario(string cedula, string nombre, string Papellido, string Sapellido, string telefono, string direccion,
            string email, string nacimiento, ref DataSet ds)
        {
            Validacion.Usuario vu = new Validacion.Usuario();
            Repositorio.Usuario ru = new Repositorio.Usuario();
            vu.validarusuario(cedula, nombre, Papellido, Sapellido, nacimiento);
            ru.registrar(cedula,nombre,Papellido,Sapellido,telefono,direccion,email,nacimiento,ref ds);
        }
    }
}
