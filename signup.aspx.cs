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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
            
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("insert into signup values('"+username.Text+"','"+password.Text+"','"+TextBox2.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            con.Close();



            SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("select username from signup ",con1);
           
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);

            
            
           

            if (username.Text==ds.Tables[0].Rows[0][0].ToString())
            {
                Response.Write("<script>alert('username alredy exist')</script>");

            }
         
            con1.Close();
          

            

            
          
        }
          
                            
        
      
    }
}