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
        public int Intentos { get; set; }
        public bool Botones = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Intentos"] != null)
                Intentos = (int)(Session["Intentos"]);

            btnReset.Visible = false;

            if (!IsPostBack)
            {
                Random rnd = new Random();
                int aleatorio = rnd.Next(0, 14);
                Session.Add("Intentos", 0);
                Intentos = 0;
                Botones = true;

                PalabraNegocio negocio = new PalabraNegocio();
                List<Palabra> lista = negocio.ListarPalabras();
                lblPalabra.Text = Helper.Guiones(lista[aleatorio].CantidadLetras);
                Session.Add("PalabraActual", lista[aleatorio].PalabraEnSi);
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            // Una función que lea cada caracter de la palabra y que si coincide que el texto del boton te tire true, y que se forme de nuevo la palabra en Load
            // con los guiones pero con las letras
            Button Btn_clic = (Button)sender;
            char letra = char.Parse(Btn_clic.Text);
            bool prueba = Helper.ExisteLaLetra(letra, (String)Session["PalabraActual"]);

            if (prueba == true)
            {
                string palabra = (String)Session["PalabraActual"];
                lblPalabra.Text = Helper.PalabraConGuiones(letra, palabra, lblPalabra.Text);
            }

            Btn_clic.Enabled = false;
            if (prueba == false)
            {
                Intentos++;
                Session.Add("Intentos", Intentos);
            }

            if (Intentos == 5)
            {
                lblPrueba.Text = "Perdiste, la palabra correcta era: " + ((string)(Session["PalabraActual"])).ToUpper();
                btnReset.Visible = true;
                Botones = false;
            }

            if (lblPalabra.Text.ToUpper() == ((string)(Session["PalabraActual"])).ToUpper())
            {
                lblPrueba.Text = "¡Felicidades!, juega de nuevo:";
                btnReset.Visible = true;
                Botones = false;
            }
        }
    }
}
