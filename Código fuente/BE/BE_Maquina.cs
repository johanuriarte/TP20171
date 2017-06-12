using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BE_Maquina
    {
           private int codMaquina;

        public int CodMaquina
        {
            get { return codMaquina; }
            set { codMaquina = value; }
        }


        private string numero;

        public string Numero
        {
            get { return numero; }
            set { numero = value; }
        }

        private string nombre;

        public string   Nombre
        {
            get { return nombre; }
            set { nombre = value; }


        }

   


        private string estado;

       public string Estado
        {

            get { return estado; }
            set { estado = value; }
        }

        
        private int codCabina;

        public int CodCabina
        {
            get { return codCabina; }
            set { codCabina = value; }
        }

        
        

      
        
     


        
        public BE_Maquina(){

         codMaquina=0;
         numero = "";
         nombre="";
        
        estado="";
         codCabina=0;
        
         
        }
        public BE_Maquina(int co, string num, string nom, string es, int coo)
        {
            codMaquina = co;
            numero = num;
            nombre = nom;
     
            estado = es;
            codCabina = coo;
           
            
        }
    }
}
