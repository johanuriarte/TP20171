using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;
using BE;
namespace BL
{
    public class BL_Promocion
    {
        DA_Promocion objPromocionDA;

        public BL_Promocion()
        {
            objPromocionDA = new DA_Promocion();
        }

        public DataSet ListarPromociones(BE_Promocion objbepromocion)
        {
            return objPromocionDA.ListarPromociones(objbepromocion);
        }

        public void RegistrarPromocion(BE_Promocion objbepromocion)
        {
            objPromocionDA.RegistrarPromocion(objbepromocion);
        }

        public void ActualizarEvento(BE_Promocion objbepromocion)
        {
            objPromocionDA.ActualizarPromocion(objbepromocion);
        }

        public void EliminarPromocion(int codPromocion)
        {
             objPromocionDA.EliminarPromocion(codPromocion);
        }

    }

    
}
