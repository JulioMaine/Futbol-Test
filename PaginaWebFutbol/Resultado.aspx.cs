using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace PaginaWebFutbol
{
    public partial class Resultado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Puntuacion resultado = new Puntuacion();

            try
            {

                if (Request.QueryString["Selecciones"] != null)
                {
                    resultado.PuntuacionTotal = (int)Session["PuntuacionSelecciones"];

                    if (resultado.PuntuacionTotal >= 6)
                    {
                        lblAprobacion.Text = "APROBADO";
                        lblAprobacion.ForeColor = System.Drawing.Color.FromArgb(0, 230, 0);
                        lblPuntuacion.Text = "Felicidades, tu puntuación es: " + resultado.PuntuacionTotal.ToString() + "/10";
                        imgAprobacion.ImageUrl = "https://image.ondacero.es/clipping/cmsimages01/2022/12/18/0B83F0AC-8789-4FAA-9506-29987C004A1B/messi-levanta-copa-mundo_104.jpg?crop=683,683,x208,y0&width=1200&height=1200&optimize=low&format=webply";
                        imgAprobacion.Width = 400;
                        imgAprobacion.Height = 400;
                    }
                    else
                    {
                        lblAprobacion.Text = "DESAPROBADO";
                        lblAprobacion.ForeColor = System.Drawing.Color.FromArgb(190, 0, 0);
                        lblPuntuacion.Text = "Tu puntuación es: " + resultado.PuntuacionTotal.ToString() + "/10";
                        imgAprobacion.ImageUrl = "https://media.diariopopular.com.ar/p/1237a3237d8dcc302e5eadd9b3baf99a/adjuntos/143/imagenes/005/418/0005418637/1200x675/smart/messi-llantojpg.jpg";
                        imgAprobacion.Width = 500;

                    }
                }

                if (Request.QueryString["Equipos"] != null)
                {
                    resultado.PuntuacionTotal = (int)Session["PuntuacionEquipos"];

                    if (resultado.PuntuacionTotal >= 6)
                    {
                        lblAprobacion.Text = "APROBADO";
                        lblAprobacion.ForeColor = System.Drawing.Color.FromArgb(0, 230, 0);
                        lblPuntuacion.Text = "Felicidades, tu puntuación es: " + resultado.PuntuacionTotal.ToString() + "/10";
                        imgAprobacion.ImageUrl = "https://editorial.uefa.com/resources/0250-0e8ef5b8aeff-1984b7a1cdf6-1000/cristiano_ronaldo_holds_the_european_cup_aloft.jpeg";
                        imgAprobacion.Width = 650;
                    }
                    else
                    {
                        lblAprobacion.Text = "DESAPROBADO";
                        lblAprobacion.ForeColor = System.Drawing.Color.FromArgb(190, 0, 0);
                        lblPuntuacion.Text = "Tu puntuación es: " + resultado.PuntuacionTotal.ToString() + "/10";
                        imgAprobacion.ImageUrl = "https://e.rpp-noticias.io/xlarge/2018/09/19/portada_144014.jpg";
                    }
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }


        }
    }
}