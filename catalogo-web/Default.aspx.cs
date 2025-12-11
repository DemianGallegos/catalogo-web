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
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> ArticulosLista { get; set; }
        public bool FiltroAvanzado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                ArticulosLista = negocio.listar();

                Session["listaArticulo"] = ArticulosLista;
            }

        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            List<Articulo> lista = (List<Articulo>)Session["listaArticulo"];
            List<Articulo> listaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper()));

            //if(!listaFiltrada == null)

            ArticulosLista = listaFiltrada;

            //else
            //dispara un card que diga: "la búsqueda.. 0 resultados o algo asi.."

        }
        protected void btnAplicar_Click(object sender, EventArgs e)
        {
            //Y que re habilite el txtFiltro también? 

            string categoriaSeleccionada;
            try
            {
                if (rdbCelulares.Checked)
                    categoriaSeleccionada = "Celulares";
                else if (rdbTelevisores.Checked)
                    categoriaSeleccionada = "Televisores";
                else if (rdbMedia.Checked)
                    categoriaSeleccionada = "Media";
                else if (rdbAudio.Checked)
                    categoriaSeleccionada = "Audio";
                else
                    categoriaSeleccionada = null;

                string marcaSeleccionada;

                if (rdbSamsung.Checked)
                    marcaSeleccionada = "Samsung";
                else if (rdbApple.Checked)
                    marcaSeleccionada = "Apple";
                else if (rdbSony.Checked)
                    marcaSeleccionada = "Sony";
                else if (rdbMotorola.Checked)
                    marcaSeleccionada = "Huawei";
                else if (rdbMotorola.Checked)
                    marcaSeleccionada = "Motorola";
                else
                    marcaSeleccionada = null;

                ArticuloNegocio negocio = new ArticuloNegocio();
                ArticulosLista = negocio.filtrar(categoriaSeleccionada, marcaSeleccionada);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnDelFiltro_Click(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ArticulosLista = negocio.listar();

        }

    }
}