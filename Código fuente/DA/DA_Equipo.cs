using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
namespace DA
{
    public class DA_Equipo
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public DataSet ListarEquipo(int codCliente)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarEquipos", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCliente", codCliente);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public void RegistrarEquipo(BE_Equipo nuevoEquipo,BE_Cliente_Por_Equipo nuevoLider)
        {
            SqlCommand unComando = new SqlCommand("SP_RegistrarEquipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;
            
            unComando.Parameters.AddWithValue("@nombre", nuevoEquipo.nombre);
            
            unComando.Parameters.AddWithValue("@descripcion", nuevoEquipo.descripcion);

            unComando.Parameters.AddWithValue("@estado", nuevoLider.estado);
            unComando.Parameters.AddWithValue("@lider", nuevoLider.lider);
            unComando.Parameters.AddWithValue("@codCliente", nuevoLider.codCliente);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void ActualizarEquipo(BE_Equipo actualizadoEquipo)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarEquipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codEquipo", actualizadoEquipo.codEquipo);
            unComando.Parameters.AddWithValue("@nombre", actualizadoEquipo.nombre);

            unComando.Parameters.AddWithValue("@descripcion", actualizadoEquipo.descripcion);
            

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public int EliminarEquipo(int codEquipo)
        {
            SqlCommand cmd = new SqlCommand("SP_EliminarEquipo", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codEquipo", codEquipo);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Int32.Parse(ds.Tables[0].Rows[0][0] + "");



        }

        public int ExcepcionMismoNombreEquipo(String nombreEquipo)
        {
            SqlCommand cmd = new SqlCommand("SP_ExcepcionMismoNombreEquipo", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombreEquipo", nombreEquipo);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Int32.Parse(ds.Tables[0].Rows[0][0] + "");



        }

        
    }
}
