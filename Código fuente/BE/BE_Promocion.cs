using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Promocion
    {

        public int codPromocion { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public int horasConsumidas { get; set; }
        public double horasPromocion { get; set; }
        public DateTime fechaInicio { get; set; }
        public DateTime fechaFin { get; set; }
        public int disponibilidadfinSemana { get; set; }
        public int estado { get; set; }
        public int codCabina { get; set; }
    }
}
