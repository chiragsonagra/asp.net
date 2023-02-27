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
    public partial class placeorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
            {
                
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("srno");
                dt.Columns.Add("id");
                dt.Columns.Add("name");
                dt.Columns.Add("image");
                dt.Columns.Add("price");
                dt.Columns.Add("quantity");
                dt.Columns.Add("totalprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
                        SqlDataAdapter da = new SqlDataAdapter("select * from product where id=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["srno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["totalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
                        SqlDataAdapter da = new SqlDataAdapter("select * from product where id=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["srno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["totalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
                Label2.Text = DateTime.Now.ToShortDateString();
                findorder();

            }

        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            return totalprice;
           
        }
        public void findorder()
        {
            string pass = "abcdefghiljklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            string orderid;
            orderid = "order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
            Label1.Text = orderid;
        }
        public void saveaddress()
        {
            string updatepass = "insert into orderaddress(orderid,address,mobilenumber)values('"+Label1.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"')";
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(updatepass,con);
            
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                DataTable dt;
                dt = (DataTable)Session["buyitems"];

                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    string updatepass = "insert into orderdetails1(orderid,srno,id,name,price,quantity,dateoforder) values('" + Label1.Text + "'," + dt.Rows[i]["srno"] + "," + dt.Rows[i]["id"] + ",'" + dt.Rows[i]["name"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label2.Text + "')";
                    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand(updatepass, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            
            saveaddress();
            Response.Redirect("retailinvoce.aspx?orderid=" + Label1.Text);
            //Response.Redirect("payment.aspx");
            
        }
   }
    
}


