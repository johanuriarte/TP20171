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
    public class DA_ServicioAdicional
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);
        BE_Producto2 dto_prod = new BE_Producto2();



        public DataSet cargarServicios(BE_Cabina objDTOCabina)
        {
            SqlCommand cmd = new SqlCommand("SP_MostrarServiciosxCabina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", objDTOCabina.CodCabina);
            dat = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dat.Fill(ds);

            return ds;


        }

        public DataSet cargaRubros()
        {
            SqlCommand cmd = new SqlCommand("sp_ListarRubroServicios", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            dat = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dat.Fill(ds);

            return ds;

        }


        public int registrarServicio(BE_ServicioAdicional dtserv, BE_Cabina dtcab)
        {
            
   
               SqlCommand cmd = new SqlCommand("sp_RegistrarServicioAdicional", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombreServicio", dtserv.nombre);
            cmd.Parameters.AddWithValue("@descripcion", dtserv.descripcion);
            cmd.Parameters.AddWithValue("@rubro", dtserv.rubro);
            cmd.Parameters.AddWithValue("@codCabina", dtcab.CodCabina);


            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();

            return 1;

        }

        public int modificarServicio(BE_ServicioAdicional dtserv)
        {



            SqlCommand cmd = new SqlCommand("sp_ModificarServicioAdicional", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombreServicio", dtserv.nombre);
            cmd.Parameters.AddWithValue("@descripcion", dtserv.descripcion);
            cmd.Parameters.AddWithValue("@rubro", dtserv.rubro);
            cmd.Parameters.AddWithValue("@estado", dtserv.estado);
            cmd.Parameters.AddWithValue("@codServicio", dtserv.codServicio);


            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();

            return 1;

        }


        public DataSet cargainfoServxcodServ(BE_ServicioAdicional dto_serv)
        {
            SqlCommand cmd = new SqlCommand("sp_CargarServicioxCodServ", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codServicio", dto_serv.codServicio);
            dat = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dat.Fill(ds);

            return ds;
        }


        public int eliminarServicio(BE_ServicioAdicional dto_servadc)
        {

            SqlCommand cmd = new SqlCommand("sp_eliminarServicio", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codServicio", dto_servadc.codServicio);


            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();

            return 1;
        }



    }
}

