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
    public class DA_ClienteCab
    {

        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);


        public int RegistrarClienteCab(BE_ClienteCab objClienteCab)
        {
            cmd = new SqlCommand("SP_RegistrarClienteCab", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            //cmd.Parameters.AddWithValue("@codCliente", objClienteCab.codCliente);


            sqlc.Open();
            cmd.ExecuteNonQuery();
            sqlc.Close();

            return 1;
        }




    }
}
