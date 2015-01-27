using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Repositorio
{
    public class ConsultaFarmacia
    {
        static Conexion.Conexion Nueva = new Conexion.Conexion();
        //Medicamentos
        public void Buscar_Medicamento(string Consulta, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA21_SP_Buscar_Medicamentos", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@med", Consulta);
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

        public bool CargarConsult(string cod, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA23_SP_CargarConsulta", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codigo", cod);
                cnn.Open();
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }

        public void actualizarConsulta(string cod,string calificacion,string fecha,string estado,string respuesta) {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {               
                cmd = new SqlCommand("HA20_SP_actualiza_estado_consulta", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codigo", cod);
                cmd.Parameters.AddWithValue("@calif", calificacion);
                cmd.Parameters.AddWithValue("@fecha", fecha);
                cmd.Parameters.AddWithValue("@estado", estado);
                cmd.Parameters.AddWithValue("@respuesta", respuesta);
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

        public void Mostrar_Medicamentos(ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA25_SP_ListarMedicamentos", cnn);
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
        //Medicamentos
        //Consultas de Farmacia
        public void Ingresar_Consulta(string cedula, string edad, string peso, string nombre, string PApellido
            , string SApellido, DateTime fechaConsulta, string consulta, string estado_consulta,
            string codigoMedi, string nombreMedi)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {               
                cmd = new SqlCommand("HA26_SP_IngresarConsulta", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cedula", cedula);
                cmd.Parameters.AddWithValue("@edad", edad);
                cmd.Parameters.AddWithValue("@peso", peso);
                cmd.Parameters.AddWithValue("@nombre", nombre);
                cmd.Parameters.AddWithValue("@PApellido", PApellido);
                cmd.Parameters.AddWithValue("@SApellido", SApellido);
                cmd.Parameters.AddWithValue("@FConsulta", fechaConsulta);
                cmd.Parameters.AddWithValue("@consulta", consulta);
                cmd.Parameters.AddWithValue("@estadoconsulta", estado_consulta);
                cmd.Parameters.AddWithValue("@codigoMedi", codigoMedi);
                cmd.Parameters.AddWithValue("@nombreMedi", nombreMedi);
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

        public void Ver_Consultas_Pendientes(string estado, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA28_SP_MostrarConsultasPorEstado", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Estado", estado);
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

        public void Ver_Consultas(ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA27_SP_MostrarConsultas", cnn);
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
        //Consultas de Farmacia
        //Mostrar Persona Actual
        public void Cargar_Persona(string Cedula, ref DataSet ds)
        {
            SqlConnection cnn = new SqlConnection(Nueva.getconexion());
            SqlCommand cmd;
            try
            {
                SqlDataAdapter da;
                cmd = new SqlCommand("HA29_SP_MostrarPersona", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ced", Cedula);
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
        //Mostrar Persona Actual
    }
}
