using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;
using BE;
using System.Data;


namespace BL
{
    public class BL_Personas
    {

        DA_Personas objPersonasDAO;

        public BL_Personas()
        {
            objPersonasDAO = new DA_Personas();
        }


        public int registrarPersonas(BE_Personas dtper)
        {
            return objPersonasDAO.registrarPersonas(dtper);
        }


    }
}
