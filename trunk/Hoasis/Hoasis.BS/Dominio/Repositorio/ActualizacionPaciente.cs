using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Repositorio
{
    public class ActualizacionPaciente
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            
        public void DatosPaciente(string ced, ref DataSet ds)
        {
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA08_SP_DatosPaciente", cnn);
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
        public bool actualizarPaciente(string ced, string dom, string tel, string email)
        {
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("HA07_sp_ActualizarPaciente", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmCedula", ced);
                cmd.Parameters.AddWithValue("@prmDireccion", dom);
                cmd.Parameters.AddWithValue("@prmTelefono", tel);
                cmd.Parameters.AddWithValue("@prmEmail", email);
                cnn.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw ex;
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }
        public bool validarActual(string ced, string actual)
        { // primero se valida si la contraseña dada por el paciente es la correcta
            // luego de haber validado procedera la actualizacion
            SqlCommand cmd;
            int n = 0;
            try
            {
                cmd = new SqlCommand("HA10_sp_ValidarActualContraseña", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmCedula", ced);
                cmd.Parameters.AddWithValue("@prmContraseña", actual);//contraseña actual del paciente
                cnn.Open();
                n = (int)cmd.ExecuteScalar();

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
            if (n > 0)
                return true;
            else
                return false;
        }
        public bool ActualizarContraseña(string ced, string nueva)
        {
             // luego de haber validado procedera la actualizacion
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("HA11_sp_ActualizarContraseña", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmCedula", ced);
                cmd.Parameters.AddWithValue("@prmContraseña", nueva);//contraseña actual del paciente
                cnn.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
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
