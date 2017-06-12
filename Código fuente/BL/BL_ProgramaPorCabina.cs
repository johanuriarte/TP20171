using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;

namespace BL
{
    public class BL_ProgramaPorCabina
    {

         DA_ProgramaPorCabina objProgramaPorCabinaDA;

         public BL_ProgramaPorCabina()
        {
            objProgramaPorCabinaDA = new DA_ProgramaPorCabina();
        }

        public DataSet CargarProgramaPorCabina(int codCabina)
        {
            return objProgramaPorCabinaDA.CargarProgramaPorCabina(codCabina);
        }

    }
}
