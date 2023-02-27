using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ice_cream
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //Session["login"].ToString();
           //Session["Buyitems"].ToString();
           Session.Clear();
          
            Response.Redirect("home.aspx");
        }
    }
}