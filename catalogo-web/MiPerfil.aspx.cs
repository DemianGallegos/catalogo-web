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
            if (!IsPostBack)
            {
                if((Usuario)Session["usuario"] != null)
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

                //no es prolijo que una variable tenga 3 nombres distintos, en el txt, en la db y la pro 
            }
            catch (Exception ex)
            {
                //Session.Add...
                throw ex;
            }
        }
    }
}