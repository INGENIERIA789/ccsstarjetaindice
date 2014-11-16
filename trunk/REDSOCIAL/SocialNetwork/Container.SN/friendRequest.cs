using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Container.SN
{
    class friendRequest
    {
        private User usuarioEmisor;
        private User usuarioReceptor;
        private Friends numeroAmigosComun;

        public friendRequest(){ }
        public User Emisor
        {
            get
            {
                return usuarioEmisor;
            }
            set
            {
                this.usuarioEmisor = value;
            }
        }
        public User Receptor
        {
            get
            {
                return usuarioReceptor;
            }
            set
            {
                this.usuarioReceptor = value;
            }
        }
        public Friends amigosComun
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
