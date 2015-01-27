using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace Hoasis.BS.Dominio.Repositorio
{
    public class Citas
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();

        public void BuscarCita(string fecha, int cedula, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA04_SP_BuscarCita", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmFecha", SqlDbType.Int).Value = fecha;
                cmd.Parameters.AddWithValue("@prmCedula", SqlDbType.Int).Value = cedula;
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

        public void ReprogramarCita(string fecha, int cedula, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA04_SP_PosponerCita", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmFecha", SqlDbType.Int).Value = fecha;
                cmd.Parameters.AddWithValue("@prmCedula", SqlDbType.Int).Value = cedula;
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
        public void CancelarCita(string fecha, int cedula, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA04_SP_CancelarCita", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmFecha", SqlDbType.Int).Value = fecha;
                cmd.Parameters.AddWithValue("@prmCedula", SqlDbType.Int).Value = cedula;
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
        public void llenarGridCitas(string cedula, ref DataSet ds)
        {

            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA04_SP_MostrarCita", cnn);
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
