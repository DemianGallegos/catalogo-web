using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace catalogo_web
{
    public partial class MiMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Incompleto. Creo se ve el id del usuario arriba

            if(!(Page is Login || Page is LoginIngreso || Page is Default || Page is Registro || Page is Error))
            {
                if (!Seguridad.sesionActiva(Session["usuario"]))
                    Response.Redirect("Login.aspx", false);
                     
            }
            if((Usuario)Session["usuario"] != null)
            {
                Usuario usuario = (Usuario)Session["usuario"];
                lblUser.Text = usuario.Email;
            }
                
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            if (Seguridad.sesionActiva(Session["usuario"]))
                Session.Clear();
            Response.Redirect("Login.aspx", true);
        }
    }
}