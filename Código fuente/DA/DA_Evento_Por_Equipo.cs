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
    public class DA_Evento_Por_Equipo
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public DataSet ListarEvento_Por_Equipo(int codEvento)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarEventoPorEquipo", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codEvento", codEvento);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }



        public void ActualizarEvento_Por_Equipo(BE_Evento_Por_Equipo actualizadoEvento_Por_Equipo)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarEvento_Por_Equipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codEventoPorEquipo", actualizadoEvento_Por_Equipo.codEventoEquipo);
            unComando.Parameters.AddWithValue("@puesto", actualizadoEvento_Por_Equipo.puesto);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public DataSet ListarEventosDeEquipo(int codEquipo)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarEventosDeEquipo", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codEquipo", codEquipo);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        

        
    }
}
