using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Hoasis.BS.Dominio.Repositorio
{
    public class Usuario
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        SqlConnection cnn = new SqlConnection(Nueva.getconexion());

        public void registrar(string cedula, string nombre, string Papellido, string Sapellido, string telefono, string direccion,
            string email, string nacimiento, ref DataSet ds)
        {
            SqlCommand cmd;
            SqlDataAdapter da;
            try
            {
                cmd = new SqlCommand("HA05_SP_Registrar", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prmCedula", SqlDbType.Char).Value = cedula;
                cmd.Parameters.Add("@prmNombre", SqlDbType.VarChar).Value = nombre;
                cmd.Parameters.Add("@prmPapellido", SqlDbType.VarChar).Value = Papellido;
                cmd.Parameters.Add("@prmSapellido", SqlDbType.VarChar).Value = Sapellido;
                cmd.Parameters.Add("@prmTelefono", SqlDbType.Char).Value = telefono;
                cmd.Parameters.Add("@prmDireccion", SqlDbType.VarChar).Value = direccion;
                cmd.Parameters.Add("@prmMail", SqlDbType.VarChar).Value = email;
                cmd.Parameters.Add("@prmF_Nacimiento", SqlDbType.Date).Value = nacimiento;
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
