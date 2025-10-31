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
    public partial class FormularioArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            try
            {
                if (!IsPostBack)
                {
                    CategoriaNegocio categoriaNegocio = new CategoriaNegocio();
                    MarcaNegocio marcaNegocio = new MarcaNegocio();
                    List<Categoria> listaCategoria = categoriaNegocio.listar();
                    List<Marca> listaMarca = marcaNegocio.listar();

                    ddlCategoria.DataSource = listaCategoria;
                    ddlCategoria.DataValueField = "Id";
                    ddlCategoria.DataTextField = "Descripcion";
                    ddlCategoria.DataBind();

                    ddlMarca.DataSource = listaMarca;
                    ddlMarca.DataValueField = "Id";
                    ddlMarca.DataTextField = "Descripcion";
                    ddlMarca.DataBind();
                }
                //Si estamos modificando
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                if (id != "" && !IsPostBack)
                {
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    List<Articulo> lista = negocio.listar(id);
                    Articulo seleccionado = lista[0];

                    txtId.Text = id;
                    txtCodigo.Text = seleccionado.Codigo;
                    txtNombre.Text = seleccionado.Nombre;
                    txtDescripcion.Text = seleccionado.Descripcion;
                    ddlCategoria.SelectedValue = seleccionado.Categoria.Id.ToString();
                    ddlMarca.SelectedValue = seleccionado.Marca.Id.ToString();
                    txtPrecio.Text = seleccionado.Precio.ToString("N2");
                    txtImagenUrl.Text = seleccionado.ImagenUrl;

                    //Validación: si el txtImagenUrl es Null or Empty o si no lo carga que traiga
                    //la imagen por defecto
                    //También sucede que si carga una url rota o un cadena de caracteres cualquiera
                    //aparece el dibujo de la imagen rota
                    
                    txtImagenUrl_TextChanged(sender, e);
                    
                    



                }


            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
                //redirección a pantalla error
            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                Articulo nuevo = new Articulo();
                ArticuloNegocio negocio = new ArticuloNegocio();

                nuevo.Codigo = txtCodigo.Text;
                nuevo.Nombre = txtNombre.Text;
                nuevo.Descripcion = txtDescripcion.Text;

                nuevo.Categoria = new Categoria();
                nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);
                nuevo.Marca = new Marca();
                nuevo.Marca.Id = int.Parse(ddlMarca.SelectedValue);

                nuevo.ImagenUrl = txtImagenUrl.Text;
                nuevo.Precio = decimal.Parse(txtPrecio.Text);

                //Agregar también UrlImagen

                negocio.agregarConSP(nuevo);
                Response.Redirect("ArticulosLista.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }


        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                Articulo arti = new Articulo();
                ArticuloNegocio negocio = new ArticuloNegocio();

                arti.Codigo = txtCodigo.Text;
                arti.Nombre = txtNombre.Text;
                arti.Descripcion = txtDescripcion.Text;

                arti.Categoria = new Categoria();
                arti.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);
                arti.Marca = new Marca();
                arti.Marca.Id = int.Parse(ddlMarca.SelectedValue);

                arti.ImagenUrl = txtImagenUrl.Text;
                arti.Precio = decimal.Parse(txtPrecio.Text);
                arti.Id = int.Parse(txtId.Text);

                //Agregar también UrlImagen

                negocio.modificarConSP(arti);
                Response.Redirect("ArticulosLista.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //Falta Validación de seguridad, "está seguro?" o lo que sea

            try
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                negocio.eliminarConSP(int.Parse(txtId.Text));
                Response.Redirect("ArticulosLista.aspx", false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            ImgArticulo.ImageUrl = txtImagenUrl.Text;
        }
    }
}