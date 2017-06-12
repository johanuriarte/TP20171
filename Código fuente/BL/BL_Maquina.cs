using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;
using BE;
namespace BL
{
    public class BL_Maquina
    {

        DA_Maquina objDao_Maquina;

        public BL_Maquina()
        {
            objDao_Maquina = new DA_Maquina();
        }
        public int insertarMaquina(BE_Maquina dtomaquina)
        {
          DA_Maquina objDao_Maquina = new DA_Maquina();
            return objDao_Maquina.insertarMaquina(dtomaquina);
        }

        public int Noduplicado(string numero)
        {
            DA_Maquina objDao_Maquina = new DA_Maquina();
            return objDao_Maquina.NoDuplicado(numero);
        }

        public int actualizarMaquina(BE_Maquina dtomaquina)
        {
            DA_Maquina objDao_Maquina = new DA_Maquina();
            return objDao_Maquina.ActualizarMaquina(dtomaquina);
        }

        public DataSet cargarMaquina(BE_Maquina maquina)
        {

            return objDao_Maquina.cargargrillaMaquina(maquina);
        }


        

        public DataSet cargarGrillaConsultaMaquina()
        {

            return objDao_Maquina.cargarGrillaConsultaMaquina();
        }


       
    }
}
