using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DA;
using BE;

namespace BL
{
    public class BL_CabinaDeInternet
    {

        DA_CabinaDeInternet objCabinaDeInternetDAO;

        public BL_CabinaDeInternet()
        {
            objCabinaDeInternetDAO = new DA_CabinaDeInternet();
        }


        public void RegistrarCabinaDeInternet(BE_CabinaDeInternet dtCabina)
        {
            objCabinaDeInternetDAO.RegistrarCabinaDeInternet(dtCabina);
        }

        public List<BE_CabinaDeInternet> listaCabinaDeInternet()
        {
            return objCabinaDeInternetDAO.ListadoCabinaInternet();
        }


        public void ActualizarEdeCabinaInternet(BE_CabinaDeInternet dtCabina)
        {
            objCabinaDeInternetDAO.ActualizarEstadodeCabina(dtCabina);
        }


        public bool ConsultarCabinas(BE_CabinaDeInternet objdtocab)
        {
            return objCabinaDeInternetDAO.getCabinas(objdtocab);
        }


        public void EliminarCabina(int codCabina)
        {
            objCabinaDeInternetDAO.EliminarCabinaInternet(codCabina);
        }

        public List<BE_CabinaDeInternet> listaCabinaDeInternet_Solicitud()
        {
            return objCabinaDeInternetDAO.ListadoCabinaInternet_Solicitud();
        }

    }
}
