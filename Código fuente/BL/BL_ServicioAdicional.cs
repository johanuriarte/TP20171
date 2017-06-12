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
    public class BL_ServicioAdicional
    {
        DA_ServicioAdicional objDAOServAdc = new DA_ServicioAdicional();
        BE_Cabina objDTOCabina = new BE_Cabina();

        public DataSet cargarServicios(BE_Cabina objDTOCabina)
        {
            return objDAOServAdc.cargarServicios(objDTOCabina);
        }

        public DataSet cargaRubros()
        {
            return objDAOServAdc.cargaRubros();
            
        }


        public int registrarServicio(BE_ServicioAdicional dtserv, BE_Cabina dtcab)
        {

            return objDAOServAdc.registrarServicio(dtserv, dtcab);

        }

        public int modificarServicio(BE_ServicioAdicional dtserv)
        {


            return objDAOServAdc.modificarServicio(dtserv);

        }


        public DataSet cargainfoServxcodServ(BE_ServicioAdicional dto_serv)
        {
            return objDAOServAdc.cargainfoServxcodServ(dto_serv);

        }


        public int eliminarServicio(BE_ServicioAdicional dto_servadc)
        {

            return objDAOServAdc.eliminarServicio(dto_servadc);
        }
        

    }
}
