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
    public class DA_CABINA_DE_INTERNET
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public List<BE_CABINA_DE_INTERNET> ObtenerTodasCabinas()
        {
            List<BE_CABINA_DE_INTERNET> listaCabinas = new List<BE_CABINA_DE_INTERNET>();

            cmd = new SqlCommand("up_ObtenerTodasCabinas", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            sqlc.Open();

            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                BE_CABINA_DE_INTERNET cabina = new BE_CABINA_DE_INTERNET();
                cabina.codCabina = Convert.ToInt32(reader["codCabina"]);
                cabina.nombre = Convert.ToString(reader["nombre"]);
                cabina.direccion = Convert.ToString(reader["direccion"]);
                cabina.estado = Convert.ToString(reader["estado"]);
                cabina.fechaCreacion = Convert.ToDateTime(Convert.ToString(reader["fechaCreacion"]));
                cabina.diaPago = Convert.ToInt32(reader["diaPago"]);
                cabina.imagen = Convert.ToString(reader["imagen"]);
                cabina.latitude = Convert.ToString(reader["latitude"]);
                cabina.longitude = Convert.ToString(reader["longitude"]);

                listaCabinas.Add(cabina);
            }
            sqlc.Close();

            return listaCabinas;
        }

        public int ValidarCabinaPorNombre(string nombreCabina)
        {
            //[up_ValidarCabinaPorNombre]

            SqlCommand cmd = new SqlCommand("up_ValidarCabinaPorNombre", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombreCabina", nombreCabina);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        }

        public BE_CABINA_DE_INTERNET ObtenerCabinaPorCodigo(int codCabina)
        {
            BE_CABINA_DE_INTERNET cabina = null;
            cmd = new SqlCommand("up_ObtenerCabinaPorCodigo", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", codCabina);

            sqlc.Open();

            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                cabina = new BE_CABINA_DE_INTERNET();
                cabina.codCabina = Convert.ToInt32(reader["codCabina"]);
                cabina.nombre = Convert.ToString(reader["nombre"]);
                cabina.direccion = Convert.ToString(reader["direccion"]);
                cabina.estado = Convert.ToString(reader["estado"]);
                cabina.fechaCreacion = Convert.ToDateTime(Convert.ToString(reader["fechaCreacion"]));
                cabina.diaPago = Convert.ToInt32(reader["diaPago"]);
                cabina.imagen = Convert.ToString(reader["imagen"]);
                cabina.latitude = Convert.ToString(reader["latitude"]);
                cabina.longitude = Convert.ToString(reader["longitude"]);
                cabina.descripcion = Convert.ToString(reader["descripcion"]);
                cabina.website = Convert.ToString(reader["website"]);
            }
            sqlc.Close();

            return cabina;

            //[up_ObtenerCabinaPorCodigo]
        }

        public List<BE_ProgramasPorCabina> ObtenerProgramasPorCabina(int codCabina)
        {
            //[up_ObtenerProgramasPorCabina]
            List<BE_ProgramasPorCabina> listaProgramas = new List<BE_ProgramasPorCabina>();

            cmd = new SqlCommand("up_ObtenerProgramasPorCabina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", codCabina);

            sqlc.Open();

            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                BE_ProgramasPorCabina programa = new BE_ProgramasPorCabina();
                programa.codPrograma = Convert.ToInt32(reader["codPrograma"]);
                programa.nombre = Convert.ToString(reader["nombre"]);
                programa.tipo = Convert.ToString(reader["tipo"]);
                programa.descripcion = Convert.ToString(reader["descripcion"]);
                programa.icono = Convert.ToString(reader["icono"]);
                programa.codCabina = Convert.ToInt32(reader["codCabina"]);

                listaProgramas.Add(programa);
            }
            sqlc.Close();

            return listaProgramas;
        }
    }
}
