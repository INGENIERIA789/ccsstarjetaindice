using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Container.SN
{
    class Friends:Persona
    {
        private int numeroAmigosComun;

        public Friends() { }

        public int amigosComun
        {
            get
            {
                return numeroAmigosComun;
            }
            set
            {
                this.numeroAmigosComun = value;
            }
        }
    }
}
