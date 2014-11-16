using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Container.SN
{
    public class Persona
    {
        private String nombre;
        private String apellidos;
        private DateTime fecha;
        private String ubicacion;

        public Persona() { }

        public String Nombre
        {
            get
            {
                return nombre;
            }
            set
            {
                this.nombre = value;
            }
        }
        public String Apellidos
        {
            get
            {
                return apellidos;
            }
            set
            {
                this.apellidos = value;
            }
        }
        public DateTime Fecha
        {
            get 
            {
                return fecha;
            }
            set
            {
                this.fecha = value;
            }
        }
        public String Ubicacion
        {
            get
            {
                return ubicacion;
            }
            set
            {
                this.ubicacion = value;
            }
        }
    }
}
