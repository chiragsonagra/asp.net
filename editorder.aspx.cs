using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ice_cream
{
    public partial class editorder : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            {
                if (Request.QueryString["srno"] != null)
                {
                    dt = (DataTable)Session["buyitems"];

                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;

                        sr = Convert.ToInt32(dt.Rows[i]["srno"].ToString());
                        Label1.Text = Request.QueryString["srno"];
                        Label2.Text = sr.ToString();
                        sr1 = Convert.ToInt32(Label1.Text);

                        if (sr == sr1)
                        {
                            Label1.Text = dt.Rows[i]["srno"].ToString();
                            Label2.Text = dt.Rows[i]["id"].ToString();
                            Label3.Text = dt.Rows[i]["name"].ToString();
                            DropDownList1.Text = dt.Rows[i]["quantity"].ToString();
                            Label5.Text = dt.Rows[i]["price"].ToString();
                            Label4.Text = dt.Rows[i]["totalprice"].ToString();
                            
                            break;
                        }
                    }

                }
                else
                { 
                }
            }
        }

       

       

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int q;
            q = Convert.ToInt32(DropDownList1.Text);
            int cost = Convert.ToInt32(Label5.Text);
            int totalcost = cost * q;
            Label4.Text = totalcost.ToString();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;

                sr = Convert.ToInt32(dt.Rows[i]["srno"].ToString());

                sr1 = Convert.ToInt32(Label1.Text);

                if (sr == sr1)
                {
                    dt.Rows[i]["srno"] = Label1.Text;
                    dt.Rows[i]["id"] = Label2.Text;
                    dt.Rows[i]["name"] = Label3.Text;
                    dt.Rows[i]["quantity"] = DropDownList1.Text;
                    dt.Rows[i]["price"] = Label5.Text;
                    dt.Rows[i]["totalprice"] = Label4.Text;
                    dt.AcceptChanges();

                    break;
                }
            }
            Response.Redirect("addtocart.aspx");
        }

        

    }
}