using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace catalogo_web
{
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Manejar PostBack !!!!!!!!!!!!!!!!!!!!!!

            //Está mal armada la lógica. No puede estar toda la lógica del lado del false

            if ((Session["error"] == null))
            {
                Response.Redirect("Default.aspx");
                return;
            }
            
            lblError.Text = Session["error"].ToString();
            
            if (lblError.Text == "User o Pass incorrectos")
            {
                lnkLoguin.Visible = true;

            }



        }
    }
}