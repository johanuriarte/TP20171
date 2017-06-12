using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_USUARIOPERSONA
    {
        public int codUsuario { get; set; }

        public string usuario { get; set; }

        public string contrasena { get; set; }

        public string estado { get; set; }

        public DateTime fechaCreacion { get; set; }

        public DateTime ultimaConexion { get; set; }

        public int codPersona { get; set; }

        public string nombre { get; set; }

        public string apellidoPaterno { get; set; }

        public string apellidoMaterno { get; set; }

        public int DNI { get; set; }

        public string genero { get; set; }

        public string correo { get; set; }

        public int telefono { get; set; }

        public string direccion { get; set; }

    }
}
