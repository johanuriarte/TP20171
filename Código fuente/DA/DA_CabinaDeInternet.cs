using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using BE;

namespace DA
{
    public class DA_CabinaDeInternet
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);


        public int RegistrarCabinaDeInternet(BE_CabinaDeInternet objCabDeInternet)
        {

            cmd = new SqlCommand("sp_Registrar_cabinadeinternet", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;



            cmd.Parameters.AddWithValue("@nombre", objCabDeInternet.nombre);
            cmd.Parameters.AddWithValue("@direccion", objCabDeInternet.direccion);
            cmd.Parameters.AddWithValue("@estado", objCabDeInternet.estado);
            //cmd.Parameters.AddWithValue("@fechaCreacion", objCabDeInternet.fechaCreacion);
            cmd.Parameters.AddWithValue("@diaPago", objCabDeInternet.diaPago);
            cmd.Parameters.AddWithValue("@imagen", objCabDeInternet.imagen);
            cmd.Parameters.AddWithValue("@latitude", objCabDeInternet.latitude);
            cmd.Parameters.AddWithValue("@longitude", objCabDeInternet.longitude);

            sqlc.Open();
            cmd.ExecuteNonQuery();
            sqlc.Close();

            return 1;
        }

        public List<BE_CabinaDeInternet> ListadoCabinaInternet()
        {
            SqlCommand cmd = new SqlCommand("sp_ListadoCabinaInernet", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            sqlc.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            BE_CabinaDeInternet dao_cabina = new BE_CabinaDeInternet();
            List<BE_CabinaDeInternet> listaCabinaInternet = new List<BE_CabinaDeInternet>();
            BE_CabinaDeInternet dto_cabina;
            while (reader.Read())
            {
                dto_cabina = new BE_CabinaDeInternet();
                dto_cabina.codCabina = int.Parse(reader[0].ToString());
                dto_cabina.nombre = reader[1].ToString().Trim();
                dto_cabina.direccion = reader[2].ToString().Trim();
                dto_cabina.estado = reader[3].ToString().Trim();
                dto_cabina.fechaCreacion = DateTime.Parse(reader[4].ToString());
                dto_cabina.diaPago = int.Parse(reader[5].ToString().Trim());
                dto_cabina.imagen = reader[6].ToString().Trim();

                listaCabinaInternet.Add(dto_cabina);
            }

            sqlc.Close();
            return listaCabinaInternet;

        }



        public void ActualizarEstadodeCabina(BE_CabinaDeInternet acCabina)
        {
            SqlCommand cmd = new SqlCommand("sp_ActualizarEstado", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codCabina", acCabina.codCabina);
            cmd.Parameters.AddWithValue("@estado", acCabina.estado);


            sqlc.Open();
            cmd.ExecuteNonQuery();

            sqlc.Close();
        }

        public bool getCabinas(BE_CabinaDeInternet objcabin)
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultarCabina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codCabina", objcabin.codCabina);

            sqlc.Open();
            bool hayRegistros;

            SqlDataReader reader = cmd.ExecuteReader();
            hayRegistros = reader.Read();

            if (hayRegistros)
            {
                objcabin.codCabina = int.Parse(reader[0].ToString());
                objcabin.nombre = reader[1].ToString().Trim();
                objcabin.direccion = reader[2].ToString().Trim();
                objcabin.estado = reader[3].ToString().Trim();
                objcabin.fechaCreacion = DateTime.Parse(reader[4].ToString());
                objcabin.diaPago = int.Parse(reader[5].ToString().Trim());
                objcabin.imagen = reader[6].ToString().Trim();

            }

            sqlc.Close();
            return hayRegistros;

        }


        public void EliminarCabinaInternet(int codCabina)
        {
            SqlCommand cmd = new SqlCommand("sp_EliminarCabina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codCabina", codCabina);
            sqlc.Open();
            cmd.ExecuteNonQuery();
            sqlc.Close();
        }


        public List<BE_CabinaDeInternet> ListadoCabinaInternet_Solicitud()
        {
            SqlCommand cmd = new SqlCommand("sp_ListadoCabinaInernet_Solicitud", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            sqlc.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            BE_CabinaDeInternet dao_cabina = new BE_CabinaDeInternet();
            List<BE_CabinaDeInternet> listaCabinaInternetSolicitud = new List<BE_CabinaDeInternet>();
            BE_CabinaDeInternet dto_cabina;
            while (reader.Read())
            {
                dto_cabina = new BE_CabinaDeInternet();
                dto_cabina.codCabina = int.Parse(reader[0].ToString());
                dto_cabina.nombre = reader[1].ToString().Trim();
                dto_cabina.direccion = reader[2].ToString().Trim();
                dto_cabina.estado = reader[3].ToString().Trim();
                dto_cabina.fechaCreacion = DateTime.Parse(reader[4].ToString());
                dto_cabina.diaPago = int.Parse(reader[5].ToString().Trim());
                dto_cabina.imagen = reader[6].ToString().Trim();

                listaCabinaInternetSolicitud.Add(dto_cabina);
            }

            sqlc.Close();
            return listaCabinaInternetSolicitud;

        }



    }
}
