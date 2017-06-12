using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using DA;

namespace DA
{
    public class DA_Personas
    {

        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public int registrarPersonas(BE_Personas dtper)
        {

            cmd = new SqlCommand("SP_RegistrarPersona", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            /*cmd.Parameters.AddWithValue("@codPersona",sqlc.codPersona);*/
            cmd.Parameters.AddWithValue("@nombre", dtper.nombre);
            cmd.Parameters.AddWithValue("@apellidoPaterno", dtper.apellidoPaterno);
            cmd.Parameters.AddWithValue("@apellidoMaterno", dtper.apellidoMaterno);
            cmd.Parameters.AddWithValue("@DNI", dtper.dni);
            cmd.Parameters.AddWithValue("@genero", dtper.genero);
            cmd.Parameters.AddWithValue("@correo", dtper.correo);
            cmd.Parameters.AddWithValue("@telefono", dtper.telefono);
            cmd.Parameters.AddWithValue("@direccion", dtper.direccion);



            sqlc.Open();
            cmd.ExecuteNonQuery();
            sqlc.Close();

            return 1;

        }





    }
}
