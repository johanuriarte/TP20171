using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using BE;
using DA;

namespace BL
{
    public class BL_ProgramaXCabina
    {
        DA_ProgramaXCabina objPrograXCabDa;

        public BL_ProgramaXCabina()
        {
            objPrograXCabDa = new DA_ProgramaXCabina();
        }
        public DataSet ConsultarProgramaXCabina()//ProgramasXCabina
        {
            return objPrograXCabDa.ConsultaIngresoProgramasXCabina();
        }
        public void RegistrarProgramasXCabina(BE_ProgramaXCabina nuevoProgramas)
        {
            objPrograXCabDa.RegistrarProgramasXCabina(nuevoProgramas);
        }
       
        public void ActualizarProgramasXCabina(BE_ProgramaXCabina ActualizarProgramas)
        {
            objPrograXCabDa.RegistrarProgramasXCabina(ActualizarProgramas);
        }

        public DataSet CargarPrograma()
        {
            return objPrograXCabDa.CargarPrograma();
        }

        public int EliminarProgramaXCabina(int codProgramas)
        {
            return objPrograXCabDa.EliminarProgramasXCabina(codProgramas);
        }
    }
}
