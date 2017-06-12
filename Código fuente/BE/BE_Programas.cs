using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Programas
    {
        private int codPrograma;

        public int CodPrograma
        {
            get { return codPrograma; }
            set { codPrograma = value; }
        }
        private string  nombre;

        public string  Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string  tipPrograma;

        public string  TipPrograma
        {
            get { return tipPrograma; }
            set { tipPrograma = value; }
        }

        private string descPrograma;

        public string DescPrograma
        {
            get { return descPrograma; }
            set { descPrograma = value; }
        }

        private int tipGuarPrograma;
        public int TipGuarPrograma
        {
            get { return tipGuarPrograma; }
            set { tipGuarPrograma = value; }
        }
        public BE_Programas()
        {
            this.codPrograma = 0;
            this.nombre = "";
            this.tipPrograma = "";
            this.descPrograma = "";
        }

        public BE_Programas(int cod, string nomb, string tip, string descp)
        {
            codPrograma = cod;
            nombre = nomb;
            tipPrograma = tip;
            descPrograma = descp;
        }

    }
}
