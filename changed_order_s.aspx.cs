using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ice_cream
{
    public partial class changed_order_s : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string order = Request.QueryString["order"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            


        }
    }
}