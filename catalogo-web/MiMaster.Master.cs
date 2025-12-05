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

            imgAvatar.ImageUrl = "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png";

            bool sesionActiva = Seguridad.sesionActiva(Session["usuario"]);
            bool paginaPublica = (Page is Login || Page is LoginIngreso || Page is Default || Page is Registro || Page is Error || Page is FormularioArticulo);

            if (!paginaPublica && !sesionActiva)
            {
                Response.Redirect("Login.aspx", false);
                return;
            }

            if (sesionActiva)
            {
                Usuario usuario = (Usuario)Session["usuario"];
                lblUser.Text = usuario.Email;
                if (!string.IsNullOrEmpty(usuario.UrlImagenPerfil))
                    imgAvatar.ImageUrl = usuario.UrlImagenPerfil;
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