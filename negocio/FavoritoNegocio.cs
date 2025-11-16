using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class FavoritoNegocio
    {
        //En favorito negocio también va a estar
        public void insertNuevo(Favorito nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("insert into FAVORITOS values (@idUser, @idArticulo)");
                datos.setearParametro("@idUser", nuevo.IdUser);
                datos.setearParametro("@idArticulo", nuevo.IdArticulo);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        //public List<Favorito> listar(string id)
        public List<Favorito> listar(Usuario usuario)
        {
            List<Favorito> lista = new List<Favorito>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select IdArticulo from FAVORITOS where IdUser = @idUser");
                datos.setearParametro("@idUser", usuario.Id);
                
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Favorito aux = new Favorito();
                    aux.IdArticulo = (int)datos.Lector["IdArticulo"];

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
