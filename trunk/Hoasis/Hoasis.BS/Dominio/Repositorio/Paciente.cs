using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Repositorio
{
    public class Paciente
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        SqlConnection cnn = new SqlConnection(Nueva.getconexion());
        public void ListarPacientes(ref DataSet ds)
        {
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA09_sp_ListarPacientes", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cnn.Open();
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }
    }
}
