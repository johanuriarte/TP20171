using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DA;
using BE;

namespace BL
{
    public class BL_ClienteCab
    {
        DA_ClienteCab objDAClienteCab;
        
        public BL_ClienteCab()
        {
            objDAClienteCab = new DA_ClienteCab();
        }


        public int registrarCliente(BE_ClienteCab objClienteCab)
        {
            return objDAClienteCab.RegistrarClienteCab(objClienteCab);
        }


    }
}
