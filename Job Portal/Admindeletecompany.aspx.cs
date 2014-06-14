using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace Job_Portal
{
    public partial class WebForm29 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            lblcmpnmae.Visible = false;
            lblCmpindustry.Visible = false;
            lblCmplogo.Visible = false;
            lblCmpdescription.Visible = false;
            lblcmpname.Visible = false;
            lbltCmpindustry.Visible = false;
            lbltCmpdescription.Visible = false;
            Image1.Visible = false;
            ImageButton2.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                string sql = "select * from company where companymail=@companymail";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@companymail", txtCmpmail.Text);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "company");
                if (ds.Tables["company"].Rows.Count >= 1)
                {
                    lblcmpname.Text = ds.Tables["company"].Rows[0]["compname"].ToString();
                    lbltCmpindustry.Text = ds.Tables["company"].Rows[0]["industry"].ToString();
                    lbltCmpdescription.Text = ds.Tables["company"].Rows[0]["description"].ToString();
                    Image1.ImageUrl = ds.Tables["company"].Rows[0]["logo"].ToString();
                    lblcmpname.Visible = true;
                    lblCmpindustry.Visible = true;
                    lblCmplogo.Visible = true;
                    lblCmpdescription.Visible = true;
                    lblcmpnmae.Visible = true;
                    lbltCmpindustry.Visible = true;
                    lbltCmpdescription.Visible = true;
                    Image1.Visible = true;
                    ImageButton2.Visible = true;

                }
                else
                {
                    Response.Write("<script>alert('Company Does Not Exists..!!')</script>");
                    txtCmpmail.Text = "";
                }
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            con.Open();
            string sql = "delete company where companymail = @compnanymail";
            SqlCommand com = new SqlCommand(sql, con);
            com.Parameters.AddWithValue("@companymail", txtCmpmail.Text);
            //com.Parameters.AddWithValue("@compemail",txtCmpmmail.Text);
            com.ExecuteNonQuery();
            /* SqlDataAdapter da = new SqlDataAdapter(com);
                  DataSet ds = new DataSet();
                  da.Fill(ds, "company");
                  if (ds.Tables["company"].Rows.Count >= 1)
                  {
                      Response.Write("<script>alert('Successfully Deleted..!!')</script>");
                      txtCmpname.Text = "";
                  }
                  else
                  {
                      Response.Write("<script>alert('Company Does Not Exists..!!')</script>");
                      txtCmpname.Text = "";
                  }
             */
            Response.Write("<script>alert('Successfully Deleted..!!')</script>");
            txtCmpmail.Text = "";

            con.Close();

        }
    }
}