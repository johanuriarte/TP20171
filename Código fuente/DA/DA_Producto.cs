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
    public class DA_Producto
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);
        BE_Producto2 dto_prod = new BE_Producto2();



        public int RegistrarProducto(BE_Producto2 dto_prod)
        {
            SqlCommand cmd = new SqlCommand("sp_RegistrarProducto", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombreProducto", dto_prod.nombre);
            cmd.Parameters.AddWithValue("@descripcion", dto_prod.descripcion);
            cmd.Parameters.AddWithValue("@precio", dto_prod.precio);
            cmd.Parameters.AddWithValue("@imagen", dto_prod.imagen);
            cmd.Parameters.AddWithValue("@codServicio", dto_prod.codServicio);


            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();

            return 1;
        }
        public DataSet cargaProductoxServicio(BE_ServicioAdicional dto_serv)
        {
            SqlCommand cmd = new SqlCommand("SP_MostrarProductosxServicio", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codServicio", dto_serv.codServicio);
            dat = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dat.Fill(ds);

            return ds;

        }


        public DataSet cargadatosdeProducto(BE_Producto2 dto_prod)
        {

            SqlCommand cmd = new SqlCommand("sp_cargardatosdeProducto", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codProducto", dto_prod.codProducto);
            dat = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dat.Fill(ds);

            return ds;

        }


        public int ActualizarProducto(BE_Producto2 dto_prod)
        {
            SqlCommand cmd = new SqlCommand("sp_actualizarProducto", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombre", dto_prod.nombre);
            cmd.Parameters.AddWithValue("@descripcion", dto_prod.descripcion);
            cmd.Parameters.AddWithValue("@precio", dto_prod.precio);
            cmd.Parameters.AddWithValue("@imagen", dto_prod.imagen);
            cmd.Parameters.AddWithValue("@codProducto", dto_prod.codProducto);


            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();

            return 1;
        }


        public int eliminarProducto(BE_Producto2 dto_prod)
        {
            SqlCommand cmd = new SqlCommand("sp_eliminarProducto", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codProducto", dto_prod.codProducto);


            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();

            return 1;
        }


    }
}

