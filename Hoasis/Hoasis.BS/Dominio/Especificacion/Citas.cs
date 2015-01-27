using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace Hoasis.BS.Dominio.Especificacion
{
    public class Citas
    {
        public void BuscarCitas(string fecha, int cedula, ref DataSet ds)
        {
            Dominio.Repositorio.Citas Citas = new Repositorio.Citas();
            Citas.BuscarCita(fecha, cedula, ref ds);
        }
        public void ReprogramarCitas(string fecha, int cedula, ref DataSet ds)
        {
            Dominio.Repositorio.Citas Citas = new Repositorio.Citas();
            Citas.ReprogramarCita(fecha, cedula, ref ds);
        }
        public void CancelarCitas(string fecha, int cedula, ref DataSet ds)
        {
            Dominio.Repositorio.Citas Citas = new Repositorio.Citas();
            Citas.CancelarCita(fecha, cedula, ref ds);
        }
        public void llenarGridCitas(string a, ref DataSet ds)
        {
            Repositorio.Citas Citas = new Repositorio.Citas();
            Citas.llenarGridCitas(a, ref ds);
        }
    }
}
