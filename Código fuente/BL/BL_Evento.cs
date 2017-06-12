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
    public class BL_Evento
    {
        DA_Evento objEventoDA;

        public BL_Evento()
        {
            objEventoDA = new DA_Evento();
        }

        public DataSet ListarEventos(int codCabina)
        {
            return objEventoDA.ListarEventos(codCabina);
        }

        public void RegistrarEvento(BE_Evento nuevoEvento)
        {
            objEventoDA.RegistrarEvento(nuevoEvento);
        }

        public void ActualizarEvento(BE_Evento actualizadoEvento)
        {
            objEventoDA.ActualizarEvento(actualizadoEvento);
        }

        public int EliminarEvento(int codEvento)
        {
            return objEventoDA.EliminarEvento(codEvento);
        }		

	public DataSet ConsultarEvento(BE_Evento evento)
        {

            return objEventoDA.ConsultarEvento(evento);


        }

        public DataSet cargarGrillaEvento()
        {

            return objEventoDA.cargarGrillaEvento();
        }

    }

    
}
