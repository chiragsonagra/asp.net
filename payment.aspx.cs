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
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("insert into payment values('" + DropDownList1.SelectedValue + "'," + TextBox1.Text + ",'" + TextBox2.Text + "',"+TextBox3.Text+")", con);
            con.Open();
            cmd.ExecuteNonQuery();
            
            Response.Redirect("retailinvoce.aspx");
            con.Close();
        }
    }
}