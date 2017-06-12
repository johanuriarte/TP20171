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
    public class BL_Programas
    {
        DA_Programas objPrograDa;

        public BL_Programas()
        {
            objPrograDa = new DA_Programas();
        }
        public DataSet ConsultarProgramas()//Programas
        {
            return objPrograDa.ConsultaIngresoProgramas();
        }
        public void RegistrarProgramas(BE_Programas nuevoProgramas)
        {
            objPrograDa.RegistrarProgramas(nuevoProgramas);
        }

        public void ActualizarProgramas(BE_Programas ActualizarProgramas)
        {
            objPrograDa.RegistrarProgramas(ActualizarProgramas);
        }

        public int EliminarEvento(int codProgramas)
        {
            return objPrograDa.EliminarProgramas(codProgramas);
        }
    }
}
