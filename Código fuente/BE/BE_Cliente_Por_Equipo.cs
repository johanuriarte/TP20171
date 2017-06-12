using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Cliente_Por_Equipo
    {

        public int codClienteEquipo { get; set; }
        public int codCliente { get; set; }
        public int codEquipo { get; set; }
        public string estado { get; set; }
        public Boolean lider { get; set; }

    }
}
