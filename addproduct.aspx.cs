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
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }
        
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + str));
                string image = "../images/" + str.ToString();


                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand("insert into product (name,price,image) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + image + "')", con);
                con.Open();

                cmd.ExecuteNonQuery();

                con.Close();


            }
            else
            {
                Response.Write("wrong....");

            }
        }
   
             

       

       

        
    }
}