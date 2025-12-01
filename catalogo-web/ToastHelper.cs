using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace catalogo_web
{
    public class ToastHelper
    {
        public static void ShowToast(Page page, string message, string type = "info")
        {
            string script = $@"showToast('{message}', '{type}');";

            ScriptManager.RegisterStartupScript(
                page,
                page.GetType(),
                Guid.NewGuid().ToString(), 
                script,
                true
            );
        }
    }
}