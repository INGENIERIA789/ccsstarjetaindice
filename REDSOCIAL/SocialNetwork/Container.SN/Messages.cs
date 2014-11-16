using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Container.SN
{
    class Messages
    {
        private User usuarioEmisor;
        private User usuarioReceptor;
        private String mensaje;
        private DateTime fechaMensaje;

        public Messages() { }
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
        public String messageText
        {
            get
            {
                return mensaje;
            }
            set
            {
                this.mensaje = value;
            }
        }
        public DateTime messageDate
        {
            get
            {
                return fechaMensaje;
            }
            set
            {
                this.fechaMensaje = value;
            }
        }
    }
}
