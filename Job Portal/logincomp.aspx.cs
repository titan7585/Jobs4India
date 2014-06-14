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
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        protected void imgbtnLogin_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                con.Open();
                string sql = "Select * from company where companymail = @email and pass = @pass";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@email", txtLoginEmail.Text);
                com.Parameters.AddWithValue("@pass", txtLoginPass.Text);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "company");
                if (ds.Tables["company"].Rows.Count >= 1)
                {
                    string cemail = ds.Tables["company"].Rows[0]["companymail"].ToString();
                    string cname = ds.Tables["company"].Rows[0]["compname"].ToString();
                    Session["ce"] = cemail;
                    Session["cn"] = cname;
                    Response.Redirect("~/companyprofile.aspx");

                }
                else
                {
                    Response.Write("<script>alert('The ID or Password you have entered is not Valid !!')</script>");
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
    }
}