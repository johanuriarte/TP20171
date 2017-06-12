using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_CABINA_DE_INTERNET
    {
        public int codCabina { get; set; }
        public string nombre { get; set; }
        public string direccion { get; set; }
        public string estado { get; set; }
        public DateTime fechaCreacion { get; set; }
        public int diaPago { get; set; }
        public string imagen { get; set; }
        public string latitude { get; set; }
        public string longitude { get; set; }

        public string descripcion { get; set; }

        public string website { get; set; }
    }
}
