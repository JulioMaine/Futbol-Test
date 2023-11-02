using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace PaginaWebFutbol
{
    public partial class PreguntasEquipos : System.Web.UI.Page
    {
        public int RespuestasCorrectas { get; set; }
        public int RespuestasIncorrectas { get; set; }
        public int NroPregunta { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnSiguiente.Visible = false;

            if (!IsPostBack)
            {
                Session.Add("NroPreguntaEquipos", 1);
                Session.Add("PuntuacionEquipos", 0);
                Session.Add("IncorrectasEquipos", 0);
                int Pregunta = (int)Session["NroPreguntaEquipos"];

                PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
                List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasEquipos();
                Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == Pregunta);

                lblPregunta.Text = pregunta.Descripcion;
                btnOpcionA.Text = pregunta.Opcion_A.Descripcion;
                btnOpcionB.Text = pregunta.Opcion_B.Descripcion;
                btnOpcionC.Text = pregunta.Opcion_C.Descripcion;
                btnOpcionD.Text = pregunta.Opcion_D.Descripcion;

                NroPregunta = pregunta.NroPregunta;
            }

            NroPregunta = (int)Session["NroPreguntaEquipos"];
            RespuestasCorrectas = (int)Session["PuntuacionEquipos"];
            RespuestasIncorrectas = (int)Session["IncorrectasEquipos"];
        }

        protected void btnOpcionA_Click(object sender, EventArgs e)
        {
            int NroPregunta = (int)Session["NroPreguntaEquipos"];
            int puntuacion = (int)Session["PuntuacionEquipos"];
            int incorrectas = (int)Session["IncorrectasEquipos"];

            PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
            List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasEquipos();
            Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

            if (pregunta.Opcion_A.Validez)
            {
                btnOpcionA.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                puntuacion++;
                Session.Add("PuntuacionEquipos", puntuacion);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            else
            {
                incorrectas++;
                Session.Add("IncorrectasEquipos", incorrectas);
                btnOpcionA.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            lblRespuesta.Text = pregunta.Respuesta;

            NroPregunta++;
            Session.Add("NroPreguntaEquipos", NroPregunta);

            BtnSiguiente.Visible = true;
        }



        protected void btnOpcionB_Click(object sender, EventArgs e)
        {
            int NroPregunta = (int)Session["NroPreguntaEquipos"];
            int puntuacion = (int)Session["PuntuacionEquipos"];
            int incorrectas = (int)Session["IncorrectasEquipos"];

            PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
            List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasEquipos();
            Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

            if (pregunta.Opcion_B.Validez)
            {
                btnOpcionB.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                puntuacion++;
                Session.Add("PuntuacionEquipos", puntuacion);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            else
            {
                incorrectas++;
                Session.Add("IncorrectasEquipos", incorrectas);
                btnOpcionB.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            lblRespuesta.Text = pregunta.Respuesta;
            NroPregunta++;
            Session.Add("NroPreguntaEquipos", NroPregunta);

            BtnSiguiente.Visible = true;
        }


        protected void btnOpcionC_Click(object sender, EventArgs e)
        {
            int NroPregunta = (int)Session["NroPreguntaEquipos"];
            int puntuacion = (int)Session["PuntuacionEquipos"];
            int incorrectas = (int)Session["IncorrectasEquipos"];

            PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
            List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasEquipos();
            Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

            if (pregunta.Opcion_C.Validez)
            {
                btnOpcionC.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                puntuacion++;
                Session.Add("PuntuacionEquipos", puntuacion);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            else
            {
                incorrectas++;
                Session.Add("IncorrectasEquipos", incorrectas);
                btnOpcionC.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            lblRespuesta.Text = pregunta.Respuesta;
            NroPregunta++;
            Session.Add("NroPreguntaEquipos", NroPregunta);

            BtnSiguiente.Visible = true;
        }

        protected void btnOpcionD_Click(object sender, EventArgs e)
        {
            int NroPregunta = (int)Session["NroPreguntaEquipos"];
            int puntuacion = (int)Session["PuntuacionEquipos"];
            int incorrectas = (int)Session["IncorrectasEquipos"];

            PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
            List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasEquipos();
            Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

            if (pregunta.Opcion_D.Validez)
            {
                btnOpcionD.BackColor = System.Drawing.Color.FromArgb(0, 230, 0);
                puntuacion++;
                Session.Add("PuntuacionEquipos", puntuacion);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            else
            {
                incorrectas++;
                Session.Add("IncorrectasEquipos", incorrectas);
                btnOpcionD.BackColor = System.Drawing.Color.FromArgb(190, 0, 0);
                btnOpcionB.Enabled = false;
                btnOpcionA.Enabled = false;
                btnOpcionC.Enabled = false;
                btnOpcionD.Enabled = false;
            }
            lblRespuesta.Text = pregunta.Respuesta;

            NroPregunta++;
            Session.Add("NroPreguntaEquipos", NroPregunta);

            BtnSiguiente.Visible = true;
        }


        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            int NroPregunta = (int)Session["NroPreguntaEquipos"];
            PreguntaNegocio preguntaNegocio = new PreguntaNegocio();
            List<Pregunta> listaPreguntas = preguntaNegocio.ListarPreguntasEquipos();
            Pregunta pregunta = listaPreguntas.Find(x => x.NroPregunta == NroPregunta);

            if (pregunta == null)
                Response.Redirect("Resultado.aspx?Equipos=" + 1);

            lblRespuesta.Text = "";
            btnOpcionA.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);
            btnOpcionB.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);
            btnOpcionC.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);
            btnOpcionD.BackColor = System.Drawing.Color.FromArgb(34, 34, 34);

            lblPregunta.Text = pregunta.Descripcion;
            btnOpcionA.Text = pregunta.Opcion_A.Descripcion;
            btnOpcionB.Text = pregunta.Opcion_B.Descripcion;
            btnOpcionC.Text = pregunta.Opcion_C.Descripcion;
            btnOpcionD.Text = pregunta.Opcion_D.Descripcion;
            this.NroPregunta = pregunta.NroPregunta;

            btnOpcionA.Enabled = true;
            btnOpcionB.Enabled = true;
            btnOpcionC.Enabled = true;
            btnOpcionD.Enabled = true;
        }
    }
}
