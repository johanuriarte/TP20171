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
    public class BL_Producto
    {
       
        DA_Producto objProductoDAO;

        public BL_Producto()
        {
            objProductoDAO = new DA_Producto();
        }
        public int RegistrarProducto(BE_Producto2 dto_prod)
        {
            return objProductoDAO.RegistrarProducto(dto_prod);
        }

        public int ActualizarProducto(BE_Producto2 dto_prod)
        {
            return objProductoDAO.ActualizarProducto(dto_prod);
        }
        public DataSet cargaProductoxServicio(BE_ServicioAdicional dto_serv)
        {

            return objProductoDAO.cargaProductoxServicio(dto_serv);
        }


        public DataSet cargadatosdeProducto(BE_Producto2 dto_prod)
        {
            

            return objProductoDAO.cargadatosdeProducto(dto_prod);

        }


        public int eliminarProducto(BE_Producto2 dto_prod)
        {

            return objProductoDAO.eliminarProducto(dto_prod);
        }


    }
}
