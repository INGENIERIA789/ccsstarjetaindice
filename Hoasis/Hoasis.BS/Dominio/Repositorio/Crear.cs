using Hoasis.BS.Dominio.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Xml;

namespace Hoasis.BS.Dominio.Repositorio
{
    public class Crear
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        public bool cargarXML(String xml)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("HA06_SP_LeerXML", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmXML", xml);
                cnn.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
                return false;
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }
    }
}
