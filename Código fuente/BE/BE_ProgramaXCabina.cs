using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
   public class BE_ProgramaXCabina
    {
        private int codProgramaXCabina;

        public int CodProgramaXCabina
        {
            get { return codProgramaXCabina; }
            set { codProgramaXCabina = value; }
        }
        private int codPrograma;

        public int CodPrograma
        {
            get { return codPrograma; }
            set { codPrograma = value; }
        }
        private int  codCabina;

        public int CodCabina
        {
            get { return codCabina; }
            set { codCabina = value; }
        }

        
        private int tipGuarProgramaXCabina;
        public int TipGuarProgramaXCabina
        {
            get { return tipGuarProgramaXCabina; }
            set { tipGuarProgramaXCabina = value; }
        }
        public BE_ProgramaXCabina()
        {
            this.codProgramaXCabina = 0;
            this.codPrograma = 0;
            this.codCabina = 0;
        }

        public BE_ProgramaXCabina(int codPxC, int codP, int codC)
        {
            codProgramaXCabina = codPxC;
            codPrograma = codP;
            codCabina = codC;
        }
    }
}
