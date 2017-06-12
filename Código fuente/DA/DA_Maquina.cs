using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Windows.Input;
using BE;

namespace DA
{
    public class DA_Maquina
    {

        

        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);
        BE_Maquina dtdi = new BE_Maquina();

    


        public int insertarMaquina(BE_Maquina maquina)
        {

            cmd = new SqlCommand("inserta_maquina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
         
            cmd.Parameters.AddWithValue("@num", maquina.Numero);
            cmd.Parameters.AddWithValue("@nom", maquina.Nombre);
        
            cmd.Parameters.AddWithValue("@est", maquina.Estado);
            cmd.Parameters.AddWithValue("@coo", maquina.CodCabina);


            sqlc.Open();
            cmd.ExecuteNonQuery();
            sqlc.Close();

            return 1;

        }


        



        public int ActualizarMaquina(BE_Maquina maquina)
        {

            cmd = new SqlCommand("actualizar_maquina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cod", maquina.CodMaquina);
            cmd.Parameters.AddWithValue("@num", maquina.Numero);
            cmd.Parameters.AddWithValue("@nom", maquina.Nombre);
    
            cmd.Parameters.AddWithValue("@est", maquina.Estado);
            


            sqlc.Open();
            cmd.ExecuteNonQuery();
            sqlc.Close();

            return 1;

        }


        public int NoDuplicado(string numero)
        {


            cmd = new SqlCommand("Noduplicado", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@num", numero);

            dat = new SqlDataAdapter(cmd);
            ds = new DataSet();
            dat.Fill(ds);

            return Convert.ToInt32(ds.Tables[0].Rows[0][0]);

        }




        public DataSet cargargrillaMaquina(BE_Maquina maquina)
        {


            cmd = new SqlCommand("sp_SelectMaquinas", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nom", maquina.Nombre);

            dat = new SqlDataAdapter(cmd);
            ds = new DataSet();
            dat.Fill(ds);

            return ds;


        }


        public DataSet cargarGrillaConsultaMaquina()
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultaMaquina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            dat = new SqlDataAdapter(cmd);
            DataSet dspedidodis = new DataSet();
            dat.Fill(dspedidodis);

            return dspedidodis;

        }




      



              
    }
}
