using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Repositorio
{
    public class Activacion
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        
        public void LlenarGrilla(string cedula, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA02_SP_FiltrarActivacion", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmCedula", cedula);
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
        public void llenarGrid(ref DataSet ds)
        {

            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA03_SP_LlenarGrillaActivacion", cnn);
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
        public bool ActivarPaciente(string cedula, int estado, string pass)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("HA04_SP_ActivarPaciente", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmCedula", cedula);
                cmd.Parameters.AddWithValue("@prmEstado", estado);
                cmd.Parameters.AddWithValue("@prmPassword", pass);
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
        public void DesactivarPaciente(string cedula, int estado)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("HA05_SP_DesactivarPaciente", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmCedula", cedula);
                cmd.Parameters.AddWithValue("@prmEstado", estado);

                cnn.Open();
                cmd.ExecuteNonQuery();

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
        public void FiltrarPacientes(string ced, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA12_sp_FiltrarPacientes", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmCedula", ced);
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
