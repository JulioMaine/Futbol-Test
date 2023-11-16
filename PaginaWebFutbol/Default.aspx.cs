using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaWebFutbol
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSelecciones_Click(object sender, EventArgs e)
        {
            try
            {
              Response.Redirect("PreguntasSelecciones.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnEquipos_Click(object sender, EventArgs e)
        {
            try
            {
                 Response.Redirect("PreguntasEquipos.aspx", false);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}