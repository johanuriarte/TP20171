using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.Data;
using DA;
namespace BL
{
    public class BL_Equipo
    {

        DA_Equipo objEquipoDA;

        public BL_Equipo()
        {
            objEquipoDA = new DA_Equipo();
        }

        public DataSet ListarEquipo(int codCliente)
        {
            return objEquipoDA.ListarEquipo(codCliente);
        }

        public void RegistrarEquipo(BE_Equipo nuevoEquipo,BE_Cliente_Por_Equipo nuevoLider)
        {
            objEquipoDA.RegistrarEquipo(nuevoEquipo,nuevoLider);
        }

        public void ActualizarEquipo(BE_Equipo actualizadoEquipo)
        {
            objEquipoDA.ActualizarEquipo(actualizadoEquipo);
        }

        public int EliminarEquipo(int codEquipo)
        {
            return objEquipoDA.EliminarEquipo(codEquipo);
        }

        public int ExcepcionMismoNombreEquipo(String nombreEquipo)
        {
            return objEquipoDA.ExcepcionMismoNombreEquipo(nombreEquipo);
        }
    }
}
