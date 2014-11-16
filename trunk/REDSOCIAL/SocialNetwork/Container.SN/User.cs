using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Container.SN
{
    class User:Persona
    {
        private String nombreUsuario;
        private String password;
        private String correoElectronico;

        public User() { }

        public String userName
        {
            get
            {
                return nombreUsuario;
            }
            set
            {
                this.nombreUsuario = value;
            }
        }
        public String pass
        {
            get
            {
                return password;
            }
            set 
            {
                this.password = value;
            }
        }
        public String eMail
        {
            get
            {
                return correoElectronico;
            }
            set
            {
                this.correoElectronico = value;
            }
        }
    }
}
