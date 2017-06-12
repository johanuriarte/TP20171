using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA;
using System.Data;
using BE;
namespace BL
{
    public class BL_Maquina_Por_Cliente
    {

        DA_Maquina_Por_Cliente objMaquina_Por_ClienteDA;

        public BL_Maquina_Por_Cliente()
        {
            objMaquina_Por_ClienteDA = new DA_Maquina_Por_Cliente();
        }

        public DataSet ListarMaquina_Por_Cliente(int codCabina)
        {
            return objMaquina_Por_ClienteDA.ListarMaquina_Por_Cliente(codCabina);
        }

        public DataSet CargarMaquinasDisponibles(int codCabina)
        {
            return objMaquina_Por_ClienteDA.CargarMaquinasDisponibles(codCabina);
        }
        public int AsignarMaquinaACliente(BE_Maquina_Por_Cliente nuevo,string usuario, string contraseña)
        {
            return objMaquina_Por_ClienteDA.AsignarMaquinaACliente(nuevo,usuario,contraseña);
        }

        public void FinalizarAsignarMaquinaACliente(BE_Maquina_Por_Cliente actualizado)
        {
            objMaquina_Por_ClienteDA.FinalizarAsignarMaquinaACliente(actualizado);
        }
        public DataSet EnviarDatosDeMaquinaYPromociones(int codCabina, int codCliente)
        {
            return objMaquina_Por_ClienteDA.EnviarDatosDeMaquinaYPromociones(codCabina,codCliente);
        }
        public void ActualizarMaquinaClientePromocion(int codMaquinaCliente, int horaPromocion)
        {
            objMaquina_Por_ClienteDA.ActualizarMaquinaClientePromocion(codMaquinaCliente,horaPromocion);
        }
    }
}
