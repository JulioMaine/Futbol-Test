using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;
using negocio;

namespace negocio
{
    public class PreguntaNegocio
    {
        public List<Pregunta> ListarPreguntasSelecciones()
        {
            List<Pregunta> listaPreguntas = new List<Pregunta>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select P.Id, P.Descripcion, Numero, A.Descripcion Opcion_A, A.Pregunta, A.Validez, B.Descripcion Opcion_B, B.Pregunta, B.Validez, C.Descripcion Opcion_C, C.Pregunta, C.Validez, D.Descripcion Opcion_D, D.Pregunta, D.Validez, P.Respuesta from Preguntas P, Opcion_A A, Opcion_B B, Opcion_C C, Opcion_D D  where P.Id = A.Id and P.Id = B.Id AND P.Id = C.Id AND P.Id = D.Id And P.Categoria = 'Selecciones'");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Pregunta aux = new Pregunta();

                    aux.Id = datos.Lector.GetInt32(0);
                    aux.Descripcion = datos.Lector.GetString(1);
                    aux.NroPregunta = datos.Lector.GetInt32(2);
                    aux.Opcion_A = new Opcion_A();
                    aux.Opcion_A.Descripcion = datos.Lector.GetString(3);
                    aux.Opcion_A.NroPregunta = datos.Lector.GetInt32(4);
                    aux.Opcion_A.Validez = datos.Lector.GetBoolean(5);
                    aux.Opcion_B = new Opcion_B();
                    aux.Opcion_B.Descripcion = datos.Lector.GetString(6);
                    aux.Opcion_B.NroPregunta = datos.Lector.GetInt32(7);
                    aux.Opcion_B.Validez = datos.Lector.GetBoolean(8);
                    aux.Opcion_C = new Opcion_C();
                    aux.Opcion_C.Descripcion = datos.Lector.GetString(9);
                    aux.Opcion_C.NroPregunta = datos.Lector.GetInt32(10);
                    aux.Opcion_C.Validez = datos.Lector.GetBoolean(11);
                    aux.Opcion_D = new Opcion_D();
                    aux.Opcion_D.Descripcion = datos.Lector.GetString(12);
                    aux.Opcion_D.NroPregunta = datos.Lector.GetInt32(13);
                    aux.Opcion_D.Validez = datos.Lector.GetBoolean(14);
                    aux.Respuesta = datos.Lector.GetString(15);

                    listaPreguntas.Add(aux);
                }

                return listaPreguntas;
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
        public List<Pregunta> ListarPreguntasEquipos()
        {
            List<Pregunta> listaPreguntas = new List<Pregunta>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select P.Id, P.Descripcion, Numero, A.Descripcion Opcion_A, A.Pregunta, A.Validez, B.Descripcion Opcion_B, B.Pregunta, B.Validez, C.Descripcion Opcion_C, C.Pregunta, C.Validez, D.Descripcion Opcion_D, D.Pregunta, D.Validez, P.Respuesta from Preguntas P, Opcion_A A, Opcion_B B, Opcion_C C, Opcion_D D  where P.Id = A.Id and P.Id = B.Id AND P.Id = C.Id AND P.Id = D.Id And P.Categoria = 'Equipos'");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Pregunta aux = new Pregunta();

                    aux.Id = datos.Lector.GetInt32(0);
                    aux.Descripcion = datos.Lector.GetString(1);
                    aux.NroPregunta = datos.Lector.GetInt32(2);
                    aux.Opcion_A = new Opcion_A();
                    aux.Opcion_A.Descripcion = datos.Lector.GetString(3);
                    aux.Opcion_A.NroPregunta = datos.Lector.GetInt32(4);
                    aux.Opcion_A.Validez = datos.Lector.GetBoolean(5);
                    aux.Opcion_B = new Opcion_B();
                    aux.Opcion_B.Descripcion = datos.Lector.GetString(6);
                    aux.Opcion_B.NroPregunta = datos.Lector.GetInt32(7);
                    aux.Opcion_B.Validez = datos.Lector.GetBoolean(8);
                    aux.Opcion_C = new Opcion_C();
                    aux.Opcion_C.Descripcion = datos.Lector.GetString(9);
                    aux.Opcion_C.NroPregunta = datos.Lector.GetInt32(10);
                    aux.Opcion_C.Validez = datos.Lector.GetBoolean(11);
                    aux.Opcion_D = new Opcion_D();
                    aux.Opcion_D.Descripcion = datos.Lector.GetString(12);
                    aux.Opcion_D.NroPregunta = datos.Lector.GetInt32(13);
                    aux.Opcion_D.Validez = datos.Lector.GetBoolean(14);
                    aux.Respuesta = datos.Lector.GetString(15);

                    listaPreguntas.Add(aux);
                }

                return listaPreguntas;
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
