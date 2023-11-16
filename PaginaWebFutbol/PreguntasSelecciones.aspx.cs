using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;
using System.Threading;
using System.Timers;

namespace PaginaWebFutbol
{
    public partial class PreguntasSelecciones : System.Web.UI.Page
    {
        public int RespuestasCorrectas { get; set; }
        public int RespuestasIncorrectas { get; set; }
        public int NroPregunta { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                BtnSiguiente.Visible = false;

                if (!IsPostBack)
                {
                    Session.Add("NroPreguntaSelecciones", 1);
                    Session.Add("PuntuacionSelecciones", 0);
                    Session.Add("IncorrectasSelecciones", 0);
                    int Pregunta = (int)Session["NroPreguntaSelecciones"];


                    PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
                    List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasSelecciones();
                    Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == Pregunta);

                    lblPregunta.Text = pregunta.Descripcion;
                    btnOpcionA.Text = pregunta.Opcion_A.Descripcion;
                    btnOpcionB.Text = pregunta.Opcion_B.Descripcion;
                    btnOpcionC.Text = pregunta.Opcion_C.Descripcion;
                    btnOpcionD.Text = pregunta.Opcion_D.Descripcion;

                    NroPregunta = pregunta.NroPregunta;

                }

                NroPregunta = (int)Session["NroPreguntaSelecciones"];
                RespuestasCorrectas = (int)Session["PuntuacionSelecciones"];
                RespuestasIncorrectas = (int)Session["IncorrectasSelecciones"];
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }

        }

        protected void btnOpcionA_Click(object sender, EventArgs e)
        {
            try
            {

                int NroPregunta = (int)Session["NroPreguntaSelecciones"];
                int puntuacion = (int)Session["PuntuacionSelecciones"];
                int incorrectas = (int)Session["IncorrectasSelecciones"];

                PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
                List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasSelecciones();
                Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

                if (pregunta.Opcion_A.Validez)
                {
                    btnOpcionA.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                    puntuacion++;
                    Session.Add("PuntuacionSelecciones", puntuacion);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                else
                {
                    incorrectas++;
                    Session.Add("IncorrectasSelecciones", incorrectas);
                    btnOpcionA.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                lblRespuesta.Text = pregunta.Respuesta;

                NroPregunta++;
                Session.Add("NroPreguntaSelecciones", NroPregunta);

                BtnSiguiente.Visible = true;
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }



        protected void btnOpcionB_Click(object sender, EventArgs e)
        {
            try
            {
                int NroPregunta = (int)Session["NroPreguntaSelecciones"];
                int puntuacion = (int)Session["PuntuacionSelecciones"];
                int incorrectas = (int)Session["IncorrectasSelecciones"];

                PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
                List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasSelecciones();
                Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

                if (pregunta.Opcion_B.Validez)
                {
                    btnOpcionB.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                    puntuacion++;
                    Session.Add("PuntuacionSelecciones", puntuacion);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                else
                {
                    incorrectas++;
                    Session.Add("IncorrectasSelecciones", incorrectas);
                    btnOpcionB.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                lblRespuesta.Text = pregunta.Respuesta;
                NroPregunta++;
                Session.Add("NroPreguntaSelecciones", NroPregunta);

                BtnSiguiente.Visible = true;
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }


        protected void btnOpcionC_Click(object sender, EventArgs e)
        {
            try
            {

                int NroPregunta = (int)Session["NroPreguntaSelecciones"];
                int puntuacion = (int)Session["PuntuacionSelecciones"];
                int incorrectas = (int)Session["IncorrectasSelecciones"];

                PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
                List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasSelecciones();
                Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

                if (pregunta.Opcion_C.Validez)
                {
                    btnOpcionC.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                    puntuacion++;
                    Session.Add("PuntuacionSelecciones", puntuacion);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                else
                {
                    incorrectas++;
                    Session.Add("IncorrectasSelecciones", incorrectas);
                    btnOpcionC.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                lblRespuesta.Text = pregunta.Respuesta;
                NroPregunta++;
                Session.Add("NroPreguntaSelecciones", NroPregunta);

                BtnSiguiente.Visible = true;
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnOpcionD_Click(object sender, EventArgs e)
        {
            try
            {

                int NroPregunta = (int)Session["NroPreguntaSelecciones"];
                int puntuacion = (int)Session["PuntuacionSelecciones"];
                int incorrectas = (int)Session["IncorrectasSelecciones"];

                PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
                List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasSelecciones();
                Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

                if (pregunta.Opcion_D.Validez)
                {
                    btnOpcionD.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                    puntuacion++;
                    Session.Add("PuntuacionSelecciones", puntuacion);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                else
                {
                    incorrectas++;
                    Session.Add("IncorrectasSelecciones", incorrectas);
                    btnOpcionD.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                    btnOpcionB.Enabled = false;
                    btnOpcionA.Enabled = false;
                    btnOpcionC.Enabled = false;
                    btnOpcionD.Enabled = false;
                }
                lblRespuesta.Text = pregunta.Respuesta;

                NroPregunta++;
                Session.Add("NroPreguntaSelecciones", NroPregunta);

                BtnSiguiente.Visible = true;
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }


        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            try
            {
            int NroPregunta = (int)Session["NroPreguntaSelecciones"];
            PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
            List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasSelecciones();
            Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

            if (pregunta == null)
                Response.Redirect("Resultado.aspx?Selecciones=" + 1, false);

            lblRespuesta.Text = "";
            btnOpcionA.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);
            btnOpcionB.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);
            btnOpcionC.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);
            btnOpcionD.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);

            if (pregunta != null)
            {
                lblPregunta.Text = pregunta.Descripcion;
                btnOpcionA.Text = pregunta.Opcion_A.Descripcion;
                btnOpcionB.Text = pregunta.Opcion_B.Descripcion;
                btnOpcionC.Text = pregunta.Opcion_C.Descripcion;
                btnOpcionD.Text = pregunta.Opcion_D.Descripcion;
                this.NroPregunta = pregunta.NroPregunta;
            }

            btnOpcionA.Enabled = true;
            btnOpcionB.Enabled = true;
            btnOpcionC.Enabled = true;
            btnOpcionD.Enabled = true;
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}