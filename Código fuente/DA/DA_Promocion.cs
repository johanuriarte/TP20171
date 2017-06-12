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
    public class DA_Promocion
    {

        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);


        public DataSet ListarPromociones(BE_Promocion objbepromocion)
        {

            SqlCommand cmd = new SqlCommand("sp_mostrarPromociones", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", objbepromocion.codCabina);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public void RegistrarPromocion(BE_Promocion objPromocion)
        {
            SqlCommand unComando = new SqlCommand("sp_ingresarPromociones", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@nombre", objPromocion.nombre);
            unComando.Parameters.AddWithValue("@descripcion", objPromocion.descripcion);
            unComando.Parameters.AddWithValue("@horasConsumidas", objPromocion.horasConsumidas);
            unComando.Parameters.AddWithValue("@horasPromocion", objPromocion.horasPromocion);
            unComando.Parameters.AddWithValue("@fechaInicio", objPromocion.fechaInicio);
            unComando.Parameters.AddWithValue("@fechaFin", objPromocion.fechaFin);
            unComando.Parameters.AddWithValue("@finSemanaFlag", objPromocion.disponibilidadfinSemana);
            unComando.Parameters.AddWithValue("@estado", objPromocion.estado);
            unComando.Parameters.AddWithValue("@codCabina", objPromocion.codCabina);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void ActualizarPromocion(BE_Promocion objPromocion)
        {
            SqlCommand unComando = new SqlCommand("sp_actualizarPromociones", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;


            unComando.Parameters.AddWithValue("@codPromocion",objPromocion.codPromocion);
            unComando.Parameters.AddWithValue("@nombre",objPromocion.nombre);
            unComando.Parameters.AddWithValue("@descripcion",objPromocion.descripcion);
            unComando.Parameters.AddWithValue("@horasConsumidas",objPromocion.horasConsumidas);
             unComando.Parameters.AddWithValue("@horasPromocion",objPromocion.horasPromocion);
            unComando.Parameters.AddWithValue("@fechaInicio",objPromocion.fechaInicio);
            unComando.Parameters.AddWithValue("@fechaFin",objPromocion.fechaFin);
            unComando.Parameters.AddWithValue("@finSemanaFlag",objPromocion.disponibilidadfinSemana);
                        unComando.Parameters.AddWithValue("@estado",objPromocion.estado);

                        sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }
        public void EliminarPromocion(int codPromocion)
        {


            SqlCommand cmd = new SqlCommand("sp_eliminarPromocion", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codPromocion", codPromocion);
            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();


        }

    }
}
