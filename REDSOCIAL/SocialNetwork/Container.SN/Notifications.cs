using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Container.SN
{
    class Notifications
    {
        private User usuarioReceptor;
        private User usuarioEmisor;
        private DateTime fechaNotificacion;

        public Notifications() { }
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
        public DateTime notificationDate
        {
            get
            {
                return fechaNotificacion;
            }
            set
            {
                this.fechaNotificacion = value;
            }
        }
    }
}