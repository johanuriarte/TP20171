using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Personas
    {
        public int codPersona { get; set; }
        public String nombre { get; set; }
        public String apellidoPaterno { get; set; }
        public String apellidoMaterno { get; set; }
        public String genero { get; set; }
        public String correo { get; set; }

        public String direccion { get; set; }

        public int telefono { get; set; }
        public int dni { get; set; }

    }
}
