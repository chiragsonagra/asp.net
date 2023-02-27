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
    public partial class login : System.Web.UI.Page
    {

      
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = textbox1.Text.Trim();
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from signup where username='" + textbox1.Text + "' and password='" + textbox2.Text + "'";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
           
            if (ds.Tables[0].Rows.Count>0)
            {
                
                Session["login"] = username;

                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<script>alert('please enter valid password or username')</script>");
            }
            if (textbox1.Text =="admin" && textbox2.Text =="admin")
            {

                Response.Redirect("addproduct.aspx");
            }

        }
     
    }
}
