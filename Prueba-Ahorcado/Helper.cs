using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prueba_Ahorcado
{
    public static class Helper
    {
        public static string Guiones(int Letras)
        {
            string palabra = "";

            for (int i = 0; i < Letras; i++)
            {
                palabra += "-";
            }

            return palabra;
        }
        public static bool ExisteLaLetra(char letra, string palabra)
        {

            foreach (char item in palabra.ToUpper())
            {
                if (item == letra)                                                       
                    return true;
            }
            return false;
        }

    }
}
