using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;
using BE;

namespace BL
{
    public class BL_CABINA_DE_INTERNET
    {
        DA_CABINA_DE_INTERNET objCabinaInternetDA = new DA_CABINA_DE_INTERNET();
        public List<BE_CABINA_DE_INTERNET> ObtenerTodasCabinas()
        {
            return objCabinaInternetDA.ObtenerTodasCabinas();
        }

        public int ValidarCabinaPorNombre(string nombreCabina)
        {
            return objCabinaInternetDA.ValidarCabinaPorNombre(nombreCabina);
        }

        public BE_CABINA_DE_INTERNET ObtenerCabinaPorCodigo(int codCabina)
        {
            return objCabinaInternetDA.ObtenerCabinaPorCodigo(codCabina);
        }

        public List<BE_ProgramasPorCabina> ObtenerProgramasPorCabina(int codCabina)
        {
            return objCabinaInternetDA.ObtenerProgramasPorCabina(codCabina);
        }
    }
}
