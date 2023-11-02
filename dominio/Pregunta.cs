using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Pregunta
    {
        public int Id { get; set; }
        public int NroPregunta { get; set; }
        public string Descripcion { get; set; }
        public string Respuesta { get; set; }
        public Opcion_A Opcion_A { get; set; }
        public Opcion_B Opcion_B { get; set; }
        public Opcion_C Opcion_C { get; set; }
        public Opcion_D Opcion_D { get; set; }

    }
}
