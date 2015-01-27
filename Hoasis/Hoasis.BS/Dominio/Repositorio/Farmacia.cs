using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Hoasis.BS.Dominio.Repositorio
{
    public class Farmacia
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        public void LlenarGrillaMedicamentos(string fecha, string cedula, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA07_SP_RetiroMedicamentos", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmFecha", SqlDbType.Date).Value = fecha;
                cmd.Parameters.AddWithValue("@prmCedula", SqlDbType.Char).Value = cedula;
                cnn.Open();
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
        public void llenarGridMedicamentos(string cedula, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA07_SP_ConsultaMedicamentos", cnn);
                cmd.Parameters.AddWithValue("@prmCedula", cedula);
                cmd.CommandType = CommandType.StoredProcedure;
                cnn.Open();
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
