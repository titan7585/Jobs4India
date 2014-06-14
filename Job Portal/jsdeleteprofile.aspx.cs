using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Job_Portal
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetAllowResponseInBrowserHistory(false);
                Response.Cache.SetNoStore();
                if (Session["ue"] == null)
                {
                    Response.Redirect("Home.aspx");
                }

            }
        }

        protected void imgbtnDelete_Click(object sender, ImageClickEventArgs e)
        {
            string uemail = Session["ue"].ToString();
            if (txtEmailDelete.Text == uemail)
            {
                SqlCommand com = new SqlCommand("Delete from jobseeker where emailid=@email", con);
                com.Parameters.AddWithValue("@email", txtEmailDelete.Text);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Home.aspx");

            }
            else
            {
                lblStatus.Text = "The Email ID does not seem to be yours";
            }
        }
    }
}