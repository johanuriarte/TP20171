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
    public class DA_Programas
    {
        private SqlCommand cmd;
        private SqlDataAdapter dat;
        private DataSet ds;
        SqlConnection sqlc = new SqlConnection(DA_Conexion.conx);
              
        public DataSet ConsultaIngresoProgramas()//Listado Inicial
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultaIngresoPrograma", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public void RegistrarProgramas(BE_Programas nuevoPrograma)
        {
            SqlCommand unComando = new SqlCommand("sp_InsertActProgramas", sqlc);
            unComando.CommandType = CommandType.StoredProcedure;
            
            unComando.Parameters.AddWithValue("@nombre", nuevoPrograma.Nombre);
            unComando.Parameters.AddWithValue("@tipo", nuevoPrograma.TipPrograma);
            unComando.Parameters.AddWithValue("@descripcion", nuevoPrograma.DescPrograma);
            unComando.Parameters.AddWithValue("@tipoGuardadoPro", nuevoPrograma.TipGuarPrograma);
            unComando.Parameters.AddWithValue("@codPrograma", nuevoPrograma.CodPrograma);


            sqlc.Open();
            unComando.ExecuteNonQuery();

            sqlc.Close();
        }

        public void CargarProgramas(BE_Programas cargPrograma)
        {
            SqlCommand cmd = new SqlCommand("sp_CargarDatosProgramas", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            /*lo que yo envio*/
            cmd.Parameters.AddWithValue("@codPrograma", cargPrograma.CodPrograma);
            /* //// */
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cargPrograma.Nombre = Convert.ToString(ds.Tables[0].Rows[0][0]);
            cargPrograma.TipPrograma = Convert.ToString(ds.Tables[0].Rows[0][1]);
            cargPrograma.DescPrograma = Convert.ToString(ds.Tables[0].Rows[0][2]);
     

        }

        public int EliminarProgramas(int ElimPrograma)
        {
            SqlCommand cmd = new SqlCommand("sp_EliminarProgramas", sqlc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codPrograma", ElimPrograma);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return Int32.Parse(ds.Tables[0].Rows[0][0] + "");

        }
    }
    }

