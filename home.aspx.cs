using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;




namespace ice_cream
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

            Session["addproduct"] = "false";

            DataTable dt = new DataTable();
            dt=(DataTable)Session["buyitems"];
            if (dt!=null)
            {
               

                Label8.Text=dt.Rows.Count.ToString();
               
            }
            else
            {
                Label8.Text="0";   
            }
            

            if (Session["login"] != null)
            {
                
               string name=Label7.Text = Session["login"].ToString();
               string lbl =Label9.Text="Hello,";
               string com = name + lbl;
            }
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
               
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());

            }
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("login.aspx");
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

     

       
        

       
        


        

        



        



      
    }
} 