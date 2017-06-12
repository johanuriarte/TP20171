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
    public class DA_Evento
    {

        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public DataSet ListarEventos(int codCabina)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarEventos", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", codCabina);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public void RegistrarEvento(BE_Evento nuevoEvento)
        {
            SqlCommand unComando = new SqlCommand("SP_RegistrarEvento", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@nombre", nuevoEvento.nombre);
            unComando.Parameters.AddWithValue("@precioInscripcion", nuevoEvento.precioInscripcion);
            unComando.Parameters.AddWithValue("@vacantes", nuevoEvento.vacantes);
            unComando.Parameters.AddWithValue("@fechaInicio", nuevoEvento.fechaInicio);
            unComando.Parameters.AddWithValue("@fechaFin", nuevoEvento.fechaFin);
            unComando.Parameters.AddWithValue("@descripcion", nuevoEvento.descripcion);
            unComando.Parameters.AddWithValue("@inscripciones", nuevoEvento.inscripciones);
            unComando.Parameters.AddWithValue("@codProgramaCabina", nuevoEvento.codProgramaCabina);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void ActualizarEvento(BE_Evento actualizadoEvento)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarEvento", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codEvento", actualizadoEvento.codEvento);
            unComando.Parameters.AddWithValue("@nombre", actualizadoEvento.nombre);
            unComando.Parameters.AddWithValue("@precioInscripcion", actualizadoEvento.precioInscripcion);
            unComando.Parameters.AddWithValue("@vacantes", actualizadoEvento.vacantes);
            unComando.Parameters.AddWithValue("@fechaInicio", actualizadoEvento.fechaInicio);
            unComando.Parameters.AddWithValue("@fechaFin", actualizadoEvento.fechaFin);
            unComando.Parameters.AddWithValue("@descripcion", actualizadoEvento.descripcion);
            unComando.Parameters.AddWithValue("@inscripciones", actualizadoEvento.inscripciones);
            unComando.Parameters.AddWithValue("@codProgramaCabina", actualizadoEvento.codProgramaCabina);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public int EliminarEvento(int codEvento)
        {
            SqlCommand cmd = new SqlCommand("SP_EliminarEvento", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codEvento", codEvento);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Int32.Parse(ds.Tables[0].Rows[0][0] + "");



        }

	public DataSet ConsultarEvento(BE_Evento evento)
        {


            cmd = new SqlCommand("ConsultarEvento", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nom", evento.nombre);

            dat = new SqlDataAdapter(cmd);
            ds = new DataSet();
            dat.Fill(ds);

            return ds;


        }


        public DataSet cargarGrillaEvento()
        {
            SqlCommand cmd = new SqlCommand("cargargrillaevento", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            dat = new SqlDataAdapter(cmd);
            DataSet dsevento = new DataSet();
            dat.Fill(dsevento);

            return dsevento;

        }

    }
}
