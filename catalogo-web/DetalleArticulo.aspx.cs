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
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Validación para que no se rompa si no trae el id desde el Home.
            //O no debria abrirse la página directamente? analizar el asunto...

            

            if (Request.QueryString["id"] == null || Request.QueryString["id"] == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }
            string id = Request.QueryString["id"].ToString();

            try
            {
                if (!IsPostBack)
                {
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    List<Articulo> lista = negocio.listar(id);
                    Articulo seleccionado = lista[0];


                    imgBtn1.ImageUrl = seleccionado.ImagenUrl;
                    imgPrincipal.ImageUrl = imgBtn1.ImageUrl;

                    lblNombre.Text = seleccionado.Nombre;
                    lblCodigo.Text = seleccionado.Codigo.ToString();
                    lblCategoria.Text = seleccionado.Categoria.Descripcion;
                    lblMarca.Text = seleccionado.Marca.Descripcion;
                    lblDescripcion.Text = seleccionado.Descripcion;
                    lblPrecio.Text = seleccionado.Precio.ToString("N2");

                    imgBtn2.ImageUrl = "https://www.svgrepo.com/show/508699/landscape-placeholder.svg";
                    imgBtn3.ImageUrl = "https://www.svgrepo.com/show/508699/landscape-placeholder.svg";
                    imgBtn4.ImageUrl = "https://www.svgrepo.com/show/508699/landscape-placeholder.svg";
                    imgBtn5.ImageUrl = "https://www.svgrepo.com/show/508699/landscape-placeholder.svg";
                }
                
            }

            catch (Exception ex)
            {
                throw ex;
            }
            

        }

        protected void imgBtn1_Click(object sender, ImageClickEventArgs e)
        {
            imgPrincipal.ImageUrl = imgBtn1.ImageUrl;
        }

        protected void imgBtn2_Click(object sender, ImageClickEventArgs e)
        {
            imgPrincipal.ImageUrl = imgBtn2.ImageUrl;
        }

        protected void imgBtn3_Click(object sender, ImageClickEventArgs e)
        {
            imgPrincipal.ImageUrl = imgBtn3.ImageUrl;
        }

        protected void imgBtn4_Click(object sender, ImageClickEventArgs e)
        {
            imgPrincipal.ImageUrl = imgBtn4.ImageUrl;
        }

        protected void imgBtn5_Click(object sender, ImageClickEventArgs e)
        {
            imgPrincipal.ImageUrl = imgBtn5.ImageUrl;
        }
    }
}