using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;
using System.Data;
using BE;
namespace BL
{
    public class BL_Premio
    {

        DA_Premio objPremioDA;

        public BL_Premio()
        {
            objPremioDA = new DA_Premio();
        }

        public DataSet ListarPremios(int codEvento)
        {
            return objPremioDA.ListarPremios(codEvento);
        }

        public void RegistrarPremio(BE_Premio nuevoPremio)
        {
            objPremioDA.RegistrarPremio(nuevoPremio);
        }

        public void ActualizarPremio(BE_Premio actualizadoPremio)
        {
            objPremioDA.ActualizarPremio(actualizadoPremio);
        }

        public void EliminarPremio(int codPremio)
        {
            objPremioDA.EliminarPremio(codPremio);
        }

	public DataSet cargarGrillaPremio()
        {

            return objPremioDA.cargarGrillaPremio();
        }
    }

    
}
