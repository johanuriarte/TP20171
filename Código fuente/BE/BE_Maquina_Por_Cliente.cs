using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Maquina_Por_Cliente
    {


        public int codMaquinaCliente { get; set; }
        public int horasConsumidas { get; set; }
        public int minutosConsumidos { get; set; }
        public TimeSpan tiempoPromocion { get; set; }
        public DateTime fechaHoraIngreso { get; set; }
        public DateTime fechaHoraSalida { get; set; }
        public string estado { get; set; }
        public int codMaquina { get; set; }
        public int codCliente { get; set; }

        

    }
}
