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
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                txtEmail.Enabled = false;
                if (!IsPostBack)
                {
                    if ((Usuario)Session["usuario"] != null)
                    {
                        Usuario usuario = (Usuario)Session["usuario"];
                        txtEmail.Text = usuario.Email;
                        txtNombre.Text = usuario.Nombre;
                        txtApellido.Text = usuario.Apellido;
                        txtUrlImagen.Text = usuario.UrlImagenPerfil;
                        imgNuevoPerfil.ImageUrl = txtUrlImagen.Text;

                    }
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
            
            
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                UsuarioNegocio negocio = new UsuarioNegocio();
                Usuario usuario = (Usuario)Session["usuario"];

                usuario.Nombre = txtNombre.Text;
                usuario.Apellido = txtApellido.Text;
                usuario.UrlImagenPerfil = txtUrlImagen.Text;

                negocio.Actualizar(usuario);

                ToastHelper.ShowToast(this, "Se actualizaron tu datos de perfil. ", "info");
            }
            catch (Exception ex)
            {
                //Deberiá personalizar cada excepción describiendo el problema?
                //En este caso, "Error al intentar actualizar tus datos de Perfil"
                
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");

            }
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgNuevoPerfil.ImageUrl = txtUrlImagen.Text;
        }
    }
}