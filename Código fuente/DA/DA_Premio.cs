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
    public class DA_Premio
    {

        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);


        public DataSet ListarPremios(int codEvento)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarPremios", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codEvento", codEvento);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public void RegistrarPremio(BE_Premio nuevoPremio)
        {
            SqlCommand unComando = new SqlCommand("SP_RegistrarPremio", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;
            unComando.Parameters.AddWithValue("@nombre", nuevoPremio.nombre);
            unComando.Parameters.AddWithValue("@descripcion", nuevoPremio.descripcion);
            unComando.Parameters.AddWithValue("@puesto", nuevoPremio.puesto);
            unComando.Parameters.AddWithValue("@codEvento", nuevoPremio.codEvento);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void ActualizarPremio(BE_Premio actualizadoPremio)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarPremio", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codPremio", actualizadoPremio.codPremio);
            unComando.Parameters.AddWithValue("@nombre", actualizadoPremio.nombre);
            unComando.Parameters.AddWithValue("@descripcion", actualizadoPremio.descripcion);
            unComando.Parameters.AddWithValue("@puesto", actualizadoPremio.puesto);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void EliminarPremio(int codPremio)
        {


            SqlCommand cmd = new SqlCommand("SP_EliminarPremio", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codPremio", codPremio);
            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();


        }

	public DataSet cargarGrillaPremio()
        {
            SqlCommand cmd = new SqlCommand("cargargrillapremio", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            dat = new SqlDataAdapter(cmd);
            DataSet dspremio = new DataSet();
            dat.Fill(dspremio);

            return dspremio;

        }

    }
}
