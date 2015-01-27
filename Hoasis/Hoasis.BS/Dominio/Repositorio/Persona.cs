using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Hoasis.BS.Dominio.Conexion;
namespace Hoasis.BS.Dominio.Repositorio
{
    public class Persona
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        
        SqlConnection cnn = new SqlConnection(Nueva.getconexion());
        public bool AutenticarPersona(string cedula, string contraseña, ref DataSet ds)
        {
            SqlCommand cmd;
            SqlDataAdapter da;
            try
            {
                cnn.Open();
                cmd = new SqlCommand("HA01_SP_Autenticar", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prm_Cedula", SqlDbType.Char).Value = cedula;
                cmd.Parameters.AddWithValue("@prm_Contraseña", SqlDbType.Char).Value = contraseña;
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
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
        public void ObtenerPersona(string cedula, ref DataSet ds)
        {
            SqlCommand cmd;
            SqlDataAdapter da;
            try
            {
                cmd = new SqlCommand("HA04_SP_SeleccionarUsuarios", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prmCedula", SqlDbType.Char).Value = cedula;
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
