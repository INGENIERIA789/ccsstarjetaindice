using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
namespace Hoasis.BS.Dominio.Especificacion
{
    public class Farmacia
    {
        public void LlenarGrillaMedicamentos(string fecha, string cedula, ref DataSet ds)
        {
            Dominio.Repositorio.Farmacia Fa = new Repositorio.Farmacia();
            Fa.LlenarGrillaMedicamentos(fecha, cedula, ref ds);
        }

        public void llenarGridMedicamentos(string cedula, ref DataSet ds)
        {
            Repositorio.Farmacia Fa = new Repositorio.Farmacia();
            Fa.llenarGridMedicamentos(cedula, ref ds);
        }
    }
}
