using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Container.SN
{
    abstract class Posts
    {
        private String nombreArchivo;
        private String urlArchivo;
        private DateTime fechaSubida;
        private int tipoPost;

        public Posts() { }
        public Posts(String nombreArchivo, String urlArchivo, DateTime fechaSubida, int tipoPost)
        {
            this.nombreArchivo = nombreArchivo;
            this.urlArchivo = urlArchivo;
            this.fechaSubida = fechaSubida;
            this.tipoPost = tipoPost;
        }
        public String fileName
        {
            get
            {
                return nombreArchivo;
            }
            set
            {
                this.nombreArchivo = value;
            }
        }
        public String path 
        {
            get
            {
                return urlArchivo;
            }
            set 
            {
                this.urlArchivo = value;
            }
        }
        public DateTime uploadDate
        {
            get
            {
                return fechaSubida;
            }
            set
            {
                this.fechaSubida = value;
            }
        }
        public int typePost
        {
            get
            {
                return tipoPost;
            }
            set
            {
                this.tipoPost = value;
            }
        }
    }
}
