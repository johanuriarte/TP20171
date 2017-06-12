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
    public class BL_Cliente_Por_Equipo
    {
        DA_Cliente_Por_Equipo objClienteEquipoDA;

        public BL_Cliente_Por_Equipo()
        {
            objClienteEquipoDA = new DA_Cliente_Por_Equipo();
        }

        public DataSet ListarClientesPorEquipo(int codEquipo, int codCliente)
        {

            return objClienteEquipoDA.ListarClientesPorEquipo(codEquipo,codCliente);
        }

        public void RegistrarSolicitudClienteEquipo(BE_Cliente_Por_Equipo nuevoClienteEquipoSolicitud, string usuario)
        {
            objClienteEquipoDA.RegistrarSolicitudClienteEquipo(nuevoClienteEquipoSolicitud,usuario);
        }

        public DataSet ListarSolicitudesEnviadas(int codEquipo, int codCliente)
        {

            return objClienteEquipoDA.ListarSolicitudesEnviadas(codEquipo, codCliente);
        }

        public DataSet ListarSolicitudesRecibidas(int codCliente)
        {

            return objClienteEquipoDA.ListarSolicitudesRecibidas(codCliente);
        }

        

        public void ActualizarRechazarSolicitudesEquipo(int codClienteEquipo)
        {
            objClienteEquipoDA.ActualizarRechazarSolicitudesEquipo(codClienteEquipo);
        }

        public void ActualizarAceptarSolicitudesEquipo(int codClienteEquipo)
        {
            objClienteEquipoDA.ActualizarAceptarSolicitudesEquipo(codClienteEquipo);
        }

        public void ActualizarLiderEquipo(int codClienteAntiguo,int codEquipoAntiguo,int codClienteEquipoNuevo)
        {
            objClienteEquipoDA.ActualizarLiderEquipo(codClienteAntiguo, codEquipoAntiguo, codClienteEquipoNuevo);
        }

        public void EliminarAbandonarEquipo(int codCliente,int codEquipo)
        {
            objClienteEquipoDA.EliminarAbandonarEquipo(codCliente,codEquipo);
        }

        public int ExcepcionUsuarioExistaNoMiembro(string usuario,int codequipo)
        {
            return objClienteEquipoDA.ExcepcionUsuarioExistaNoMiembro(usuario,codequipo);
        }

        
    }
}
