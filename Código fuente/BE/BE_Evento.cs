using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Evento
    {

        public int codEvento { get; set; }
        public string nombre { get; set; }
        public string imagen { get; set; }
        public int vacantes { get; set; }
        public double precioInscripcion { get; set; }
        public DateTime fechaInicio { get; set; }
        public DateTime fechaFin { get; set; }
        public string descripcion { get; set; }

        public bool inscripciones { get; set; }
        public int codProgramaCabina { get; set; }

        public string Programanombre { get; set; }
    }
}
