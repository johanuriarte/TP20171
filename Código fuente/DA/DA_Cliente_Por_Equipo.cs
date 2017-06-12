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
    public class DA_Cliente_Por_Equipo
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public DataSet ListarClientesPorEquipo(int codEquipo, int codCliente)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarClientesPorEquipo", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codEquipo", codEquipo);
            cmd.Parameters.AddWithValue("@codCliente", codCliente);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public void RegistrarSolicitudClienteEquipo(BE_Cliente_Por_Equipo nuevoClienteEquipoSolicitud, string usuario)
        {
            SqlCommand unComando = new SqlCommand("SP_RegistrarSolicitudClienteEquipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@usuario", usuario);
            unComando.Parameters.AddWithValue("@codEquipo", nuevoClienteEquipoSolicitud.codEquipo);
            unComando.Parameters.AddWithValue("@estado", nuevoClienteEquipoSolicitud.estado);
            unComando.Parameters.AddWithValue("@lider", nuevoClienteEquipoSolicitud.lider);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public DataSet ListarSolicitudesEnviadas(int codEquipo, int codCliente)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarSolicitudesEnviadasClientePorEquipo", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codEquipo", codEquipo);
            cmd.Parameters.AddWithValue("@codCliente", codCliente);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public DataSet ListarSolicitudesRecibidas(int codCliente)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarSolicitudesRecibidas", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCliente", codCliente);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public void ActualizarRechazarSolicitudesEquipo(int codClienteEquipo)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarRechazarSolicitudesEquipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codClienteEquipo", codClienteEquipo);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void ActualizarAceptarSolicitudesEquipo(int codClienteEquipo)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarAceptarSolicitudesEquipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codClienteEquipo", codClienteEquipo);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void ActualizarLiderEquipo(int codClienteAntiguo, int codEquipoAntiguo, int codClienteEquipoNuevo)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarLiderEquipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;

            unComando.Parameters.AddWithValue("@codClienteAntiguo", codClienteAntiguo);
            unComando.Parameters.AddWithValue("@codEquipoAntiguo", codEquipoAntiguo);
            unComando.Parameters.AddWithValue("@codClienteEquipoNuevo", codClienteEquipoNuevo);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }


        public void EliminarAbandonarEquipo(int codCliente, int codEquipo)
        {
            SqlCommand unComando = new SqlCommand("SP_EliminarAbandonarEquipo", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codCliente", codCliente);
            unComando.Parameters.AddWithValue("@codEquipo", codEquipo);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public int ExcepcionUsuarioExistaNoMiembro(string usuario, int codequipo)
        {
            SqlCommand cmd = new SqlCommand("SP_ExcepcionUsuarioExistaNoMiembro", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codequipo", codequipo);
            cmd.Parameters.AddWithValue("@usuario", usuario);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Int32.Parse(ds.Tables[0].Rows[0][0] + "");



        }
    }
}
