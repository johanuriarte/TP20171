using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BE;

namespace DA
{
    public class DA_ProgramaXCabina
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);

        public DataSet ConsultaIngresoProgramasXCabina()//Listado Inicial
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultaIngresoProgramaXCabina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public void RegistrarProgramasXCabina(BE_ProgramaXCabina nuevoPrograma)
        {
            SqlCommand unComando = new SqlCommand("sp_InsertActProgramasXCabina", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;

            unComando.Parameters.AddWithValue("@codPrograma", nuevoPrograma.CodPrograma);
            unComando.Parameters.AddWithValue("@codCabina", nuevoPrograma.CodCabina);
            unComando.Parameters.AddWithValue("@tipoGuardadoPro", nuevoPrograma.TipGuarProgramaXCabina);
            unComando.Parameters.AddWithValue("@codProgramaXCabina", nuevoPrograma.CodProgramaXCabina);


            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }
       
        public DataSet CargarPrograma()
        {

            SqlCommand cmd = new SqlCommand("sp_CargarProgramas", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }


        public int EliminarProgramasXCabina(int ElimProgramaxCabina)
        {
            SqlCommand cmd = new SqlCommand("SP_EliminarProgramaXCabina", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codProgXCabina", ElimProgramaxCabina);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Int32.Parse(ds.Tables[0].Rows[0][0] + "");

        }
    }
}
