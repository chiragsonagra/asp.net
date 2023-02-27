using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ice_cream
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"]!=null)
            {
                HyperLink1.Visible = true;
            }
            else
            {
                HyperLink1.Visible = false;
            }
        }
    }
}