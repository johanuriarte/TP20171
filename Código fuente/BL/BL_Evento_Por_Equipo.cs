using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;
using BE;
using System.Data;

namespace BL
{
    public class BL_Evento_Por_Equipo
    {
        DA_Evento_Por_Equipo objEvento_Por_EquipoDA;

        public BL_Evento_Por_Equipo()
        {
            objEvento_Por_EquipoDA = new DA_Evento_Por_Equipo();
        }

        public DataSet ListarEvento_Por_Equipo(int codEvento)
        {
            return objEvento_Por_EquipoDA.ListarEvento_Por_Equipo(codEvento);
        }

        public void ActualizarEvento_Por_Equipo(BE_Evento_Por_Equipo actualizadoEvento_Por_Equipo)
        {
            objEvento_Por_EquipoDA.ActualizarEvento_Por_Equipo(actualizadoEvento_Por_Equipo);
        }

        public DataSet ListarEventosDeEquipo(int codEquipo)
        {
            return objEvento_Por_EquipoDA.ListarEventosDeEquipo(codEquipo);
        }
    }
}
