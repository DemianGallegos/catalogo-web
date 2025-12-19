using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace catalogo_web
{
    public static class Validar
    {
        public static bool validaTextoReq(object control)
        {
            if (control is TextBox texto)
            {
                if (!(string.IsNullOrEmpty(texto.Text)))
                    return true;
                else
                    return false;

            }
            return false;
        }

        public static bool precioValido(string valor)
        {
            if (decimal.TryParse(valor, out decimal precio) && precio > 0)
                return true;
            else 
                return false;
        }

        public static bool ddlSeleccionValida(object control)
        {
            if (control is DropDownList ddl)
            {
                if (!(ddl.SelectedValue == ""))
                    return true; 
                else
                    return false;
            }
            return false;
        }




    }
}