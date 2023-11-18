using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;


namespace negocio
{
    public class PalabraNegocio
    {
        public List<Palabra> ListarPalabras()
        {
            List<Palabra> lista = new List<Palabra>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select * from Palabras");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Palabra aux = new Palabra();

                    aux.Id = datos.Lector.GetInt32(0);
                    aux.PalabraEnSi = datos.Lector.GetString(1);
                    aux.CantidadLetras = datos.Lector.GetInt32(2);

                    lista.Add(aux);
                }


                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
