using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using iTextSharp.text.html;
using System.Text.RegularExpressions;


namespace ice_cream
{
    
    public partial class retailinvoce : System.Web.UI.Page
    {
        string File;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Request.QueryString["orderid"];
            //Panel1.Visible = true;
            Label1.Text = Label6.Text;
            findorderdate(Label1.Text);
            findaddress(Label1.Text);
            showgrid(Label1.Text);
            
        }
        
     
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=orderinvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
             Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4,10f,10f,100f,0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparser.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();




        }
      
      

        private void findorderdate(string orderid)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from orderdetails1 where orderid='" + orderid + "'";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();

            }
            con.Close();
        }
        private void findaddress(string orderid)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from orderaddress where orderid='" + orderid + "'";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label7.Text = ds.Tables[0].Rows[0]["address"].ToString();

            }
            con.Close();
        }
       
        private void showgrid(string orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("srno");
            dt.Columns.Add("id");
            dt.Columns.Add("name");
            dt.Columns.Add("price");
            dt.Columns.Add("quantity");
            dt.Columns.Add("totalprice");

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sonagra chirag\documents\visual studio 2010\Projects\ice cream\ice cream\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from orderdetails1 where orderid='" + orderid + "'";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["srno"] = ds.Tables[0].Rows[i]["srno"].ToString();
                dr["id"] = ds.Tables[0].Rows[i]["id"].ToString();
                dr["name"] = ds.Tables[0].Rows[i]["name"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                int Quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                //int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                int TotalPrice = price * Quantity;
                dr["totalprice"] = TotalPrice;
                grandtotal = grandtotal + TotalPrice;
                dt.Rows.Add(dr);
                i = i + 1;

            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label5.Text = grandtotal.ToString(); 
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            exportpdf();
        }
    }
}


