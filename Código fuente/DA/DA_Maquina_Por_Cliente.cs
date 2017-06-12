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
    public class DA_Maquina_Por_Cliente
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public DataSet ListarMaquina_Por_Cliente(int codCabina)
        {

            SqlCommand cmd = new SqlCommand("SP_ListarMaquinasAsignadas", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", codCabina);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public DataSet CargarMaquinasDisponibles(int codCabina)
        {

            SqlCommand cmd = new SqlCommand("SP_CargarMaquinasDisponibles", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", codCabina);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public int AsignarMaquinaACliente(BE_Maquina_Por_Cliente nuevo,string usuario,string contraseña)
        {
            

            SqlCommand cmd = new SqlCommand("SP_AsignarMaquinaACliente", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@usuario", usuario);
            cmd.Parameters.AddWithValue("@contraseña", contraseña);
            cmd.Parameters.AddWithValue("@codMaquina", nuevo.codMaquina);
            cmd.Parameters.AddWithValue("@estado", nuevo.estado);
            cmd.Parameters.AddWithValue("@fechaHoraIngreso", nuevo.fechaHoraIngreso);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Int32.Parse(ds.Tables[0].Rows[0][0] + "");
        }
        public void FinalizarAsignarMaquinaACliente(BE_Maquina_Por_Cliente actualizado)
        {
            SqlCommand unComando = new SqlCommand("sp_FinalizarAsignarMaquina", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;
            unComando.Parameters.AddWithValue("@codMaquinaCliente", actualizado.codMaquinaCliente);
            unComando.Parameters.AddWithValue("@estado", actualizado.estado);
            unComando.Parameters.AddWithValue("@fechaHoraSalida", actualizado.fechaHoraSalida);
            unComando.Parameters.AddWithValue("@horasConsumidas", actualizado.horasConsumidas);
            unComando.Parameters.AddWithValue("@minutosConsumidos", actualizado.minutosConsumidos);
            unComando.Parameters.AddWithValue("@codMaquina", actualizado.codMaquina);
          
            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }
        public DataSet EnviarDatosDeMaquinaYPromociones(int codCabina, int codCliente)
        {

            SqlCommand cmd = new SqlCommand("SP_EnviarDatosDeMaquinaYPromociones", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", codCabina);
            cmd.Parameters.AddWithValue("@codCliente", codCliente);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }

        public void ActualizarMaquinaClientePromocion(int codMaquinaCliente, int horaPromocion)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarMaquinaClientePromocion", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;
            unComando.Parameters.AddWithValue("@codMaquinaCliente", codMaquinaCliente);
            unComando.Parameters.AddWithValue("@horaPromocion", horaPromocion);

            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

    }
}
