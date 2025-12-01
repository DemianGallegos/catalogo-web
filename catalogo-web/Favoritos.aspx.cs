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
    public partial class Favoritos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Usuario)Session["usuario"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            Usuario usuario = (Usuario)Session["usuario"];
            FavoritoNegocio negocio = new FavoritoNegocio();
           
            List<Articulo> listaArticulos = negocio.listar(usuario);

            if (!IsPostBack)
            {
                repRepetidor.DataSource = listaArticulos;
                repRepetidor.DataBind();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            FavoritoNegocio negocio = new FavoritoNegocio();

            string valor = ((Button)sender).CommandArgument;
            negocio.eliminar(int.Parse(valor));

            //Acá vuelvo  acargar la lista 
            //Simplificar código ! 

            Usuario usuario = (Usuario)Session["usuario"];
            List<Articulo> listaArticulos = negocio.listar(usuario);
            repRepetidor.DataSource = listaArticulos;
            repRepetidor.DataBind();

        }
    }
}