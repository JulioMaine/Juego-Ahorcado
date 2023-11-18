using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace Prueba_Ahorcado
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PalabraNegocio negocio = new PalabraNegocio();
                List<Palabra> lista = negocio.ListarPalabras();
                lblPrueba.Text = lista[3].PalabraEnSi;
                lblPalabra.Text = Helper.Guiones(lista[3].CantidadLetras);
                Session.Add("PalabraActual", lista[3].PalabraEnSi);
            }

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            // Una función que lea cada caracter de la palabra y que si coincide que el texto del boton te tire true, y que se forme de nuevo la palabra en Load
            // con los guiones pero con las letras (La solución aca esta en el video de coding con C)
            Button Btn_clic = (Button)sender;
            char lala = char.Parse(Btn_clic.Text);

            bool prueba = Helper.ExisteLaLetra(lala, (String)Session["PalabraActual"]);

            //FUNCIONA
            //
        }
    }
}