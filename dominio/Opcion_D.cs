using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Opcion_D
    {
        public int NroPregunta { get; set; }
        public string Descripcion { get; set; }
        public bool Validez { get; set; } // Si es correcta o no la opción.

    }
}
