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
    public class DA_Usuarios
    {

        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);


        public int registrarUsuarios(BE_Usuarios dtusrs)
        {

            cmd = new SqlCommand("SP_RegistrarUsuario", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            /*cmd.Parameters.AddWithValue("@codUsuario",dtusrs.codUsuario);*/
            cmd.Parameters.AddWithValue("@usuario", dtusrs.usuario);
            cmd.Parameters.AddWithValue("@contraseña", dtusrs.contrasena);
            //cmd.Parameters.AddWithValue("@estado", dtusrs.estado);
         /*   cmd.Parameters.AddWithValue("@fechaCreacion", dtusrs.fechaCreacion);
            cmd.Parameters.AddWithValue("@ultimaConexion", dtusrs.ultimaConexion);*/


            sqlc.Open();
            cmd.ExecuteNonQuery();
            sqlc.Close();

            return 1;

        }

        public BE_USUARIOPERSONA ObtenerDatosUsuario(string nombreUsuario)
        {
            BE_USUARIOPERSONA usuario = null;

            cmd = new SqlCommand("up_ObtenerDatosUsuario", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@nombreusuario", nombreUsuario);

            sqlc.Open();

            var reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                usuario = new BE_USUARIOPERSONA();

                usuario.codUsuario = Convert.ToInt32(reader["codUsuario"]);
                usuario.usuario = Convert.ToString(reader["usuario"]);
                usuario.contrasena = Convert.ToString(reader["contraseña"]);
                usuario.estado = Convert.ToString(reader["estado"]);
                usuario.fechaCreacion = Convert.ToDateTime(reader["fechaCreacion"]);
                usuario.ultimaConexion = Convert.ToDateTime(reader["ultimaConexion"]);
                usuario.codPersona = Convert.ToInt32(reader["codPersona"]);
                usuario.nombre = Convert.ToString(reader["nombre"]);
                usuario.apellidoPaterno = Convert.ToString(reader["apellidoPaterno"]);
                usuario.apellidoMaterno = Convert.ToString(reader["apellidoMaterno"]);
                usuario.DNI = Convert.ToInt32(reader["DNI"]);
                usuario.genero = Convert.ToString(reader["genero"]);
                usuario.correo = Convert.ToString(reader["correo"]);
                usuario.telefono = Convert.ToInt32(reader["telefono"]);
                usuario.direccion = Convert.ToString(reader["direccion"]);                
            }
            sqlc.Close();

            return usuario;
        }


        public List<BE_Usuarios> ListadoUsuarios()
        {
            SqlCommand cmd = new SqlCommand("SP_ListadoUsuarios", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            sqlc.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            BE_Usuarios dao_usuario = new BE_Usuarios();
            List<BE_Usuarios> listaUsuarios = new List<BE_Usuarios>();
            BE_Usuarios dto_usuario;

            while (reader.Read())
            {
                dto_usuario = new BE_Usuarios();
                dto_usuario.codUsuario = int.Parse(reader[0].ToString());
                dto_usuario.usuario = reader[1].ToString().Trim();
                dto_usuario.contrasena = reader[2].ToString().Trim();
                dto_usuario.estado = reader[3].ToString().Trim();
                dto_usuario.fechaCreacion = DateTime.Parse(reader[4].ToString());
                //dto_usuario.ultimaConexion = DateTime.Parse(reader[5].ToString());

                listaUsuarios.Add(dto_usuario);

            }

            sqlc.Close();
            return listaUsuarios;


        }

        public void ActualizarEstadoCliente(BE_Usuarios actualizadoEstado)
        {
            SqlCommand unComando = new SqlCommand("SP_ActualizarEstadoCliente", sqlc);

            unComando.CommandType = CommandType.StoredProcedure;

            unComando.Parameters.AddWithValue("@codUsuario", actualizadoEstado.codUsuario);
            unComando.Parameters.AddWithValue("@estado", actualizadoEstado.estado);

            sqlc.Open();
            unComando.ExecuteNonQuery();
            sqlc.Close();            
        }




        public bool getClientes(BE_Usuarios objClie)
        {
            SqlCommand cmd = new SqlCommand("SP_ConsultarCliente", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codUsuario", objClie);
            sqlc.Open();
            bool hayRegistros;

            SqlDataReader reader = cmd.ExecuteReader();
            hayRegistros = reader.Read();

            if (hayRegistros)
            {
                objClie.codUsuario = int.Parse(reader[0].ToString());
                objClie.usuario = reader[1].ToString().Trim();
                objClie.contrasena = reader[2].ToString().Trim();
                objClie.estado = reader[3].ToString().Trim();
                objClie.fechaCreacion = DateTime.Parse(reader[4].ToString());
                //objClie.ultimaConexion = DateTime.Parse(reader[5].ToString());
            }

            sqlc.Close();
            return hayRegistros;
        }

    }
}
