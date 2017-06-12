using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Cabina
    {


        public int codCabina;

        public int CodCabina
        {
            get { return codCabina; }
            set { codCabina = value; }
        }



        public string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }


        }

        public string direccion;

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }


        public string estado;

        public string Estado
        {

            get { return estado; }
            set { estado = value; }
        }


        public string fechaCreacion;

        public string Fechacreacion
        {

            get { return fechaCreacion; }
            set { fechaCreacion = value; }
        }


        public int diaPago;

        public int DiaPago
        {
            get { return diaPago; }
            set { diaPago = value; }
        }


        public string imagen;

        public string Imagen
        {

            get { return imagen; }
            set { imagen = value; }
        }





        public BE_Cabina()
        {

            codCabina = 0;
            nombre = "";
            direccion = "";
            estado = "";
            fechaCreacion = "";
            diaPago = 0;
            imagen = "";


        }
        public BE_Cabina(int coo, string nom, string dir, string es, string fech, int dia,string ima)
        {
            codCabina = coo;
            nombre = nom;
            direccion = dir;
            estado = es;
            fechaCreacion = fech;
            diaPago = dia;
            imagen = ima;

           
            


        }
    }
}
