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

                    if ((Usuario)Session["usuario"] != null)
                    {
                        FavoritoNegocio negocioF = new FavoritoNegocio();
                        Usuario usuario = (Usuario)Session["usuario"];
                        if (negocioF.obtenerEstado(usuario, id))
                            chkFavorito.Checked = true;
                    }

                    //Guardo el artículo seleccionado en Session que luego voy a utilizar en el evento del chkFavorito
                    Session.Add("artiSeleccionado", seleccionado);


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

        protected void chkFavorito_CheckedChanged(object sender, EventArgs e)
        {
            Favorito nuevo = new Favorito();
            FavoritoNegocio negocio = new FavoritoNegocio();
            Usuario usuario = (Usuario)Session["usuario"];
            Articulo articulo = (Articulo)Session["artiSeleccionado"];


            //Arreglar esto!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

            if (!chkFavorito.Checked)
            {
                //Acá ejecuta acción

                //Guarda el artículo como Favorito

                //Primero construir la lógica como si fuera un OnClickButton

                //Luego pensar como seria el caso de que el artículo ya estuviera seleccionado como favorito,
                //o sea como lo leería par que no vuelva a guardarlo,
                //La lógica seria if(!chkFavorito.Checked) alli ejecuta la acción
                //(Si es checked o no lo tiene que leer en el Page_Load)

                //Lanzar un cartel que diga que Agregaste...

                negocio.eliminar(articulo.Id);

            }
            else
            {
                nuevo.IdUser = usuario.Id;
                nuevo.IdArticulo = articulo.Id;
                negocio.insertNuevo(nuevo);
                
                //Lanzar un cartel que diga Eliminatse...
            }
        }
    }
}