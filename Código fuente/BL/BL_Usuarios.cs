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
   public class BL_Usuarios
    {
        DA_Usuarios objUsuariosDAO;

        public BL_Usuarios()
        {
            objUsuariosDAO = new DA_Usuarios();
        }


        public int registrarUsuarios(BE_Usuarios dtusrs)
        {
            return objUsuariosDAO.registrarUsuarios(dtusrs);
        }

        public BE_USUARIOPERSONA ObtenerDatosUsuario(string nombreUsuario, string contrasenia)
        {
            BE_USUARIOPERSONA usuario = objUsuariosDAO.ObtenerDatosUsuario(nombreUsuario);

            if(usuario != null)
            {
                if(nombreUsuario.Equals(usuario.usuario) & contrasenia.Equals(usuario.contrasena))
                {
                    return usuario;
                }
            }

            return null;
        }

        public List<BE_Usuarios> ListadoUsuarios()
        {
            return objUsuariosDAO.ListadoUsuarios();
        }



        public void ActualizarEstadoCliente(BE_Usuarios actualizadoEstado)
        {
            objUsuariosDAO.ActualizarEstadoCliente(actualizadoEstado);
        }


        public bool ConsultarCliente(BE_Usuarios objClies)
        {
            return objUsuariosDAO.getClientes(objClies);
        }
    }
}
