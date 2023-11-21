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
        public static string PalabraConGuiones(char letra, string palabra, string palabraGuiones)
        {

            int numeroLetras = palabra.Length;
            char[] matriz1 = new char[numeroLetras];
            int contador = 0;

            foreach (var item2 in palabraGuiones)
            {
                matriz1[contador] = item2;
                contador++;
            }
            
            
            int contador2 = 0;
            foreach (char item in palabra.ToUpper())
            {
                if (item == letra)
                    matriz1[contador2] = item;

                contador2++;
            }

            string s = new string(matriz1);
            return s;
        }

    }
}
