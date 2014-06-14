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
    public partial class WebForm26 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        protected void ImageButtonsubmit_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                con.Open();
                SqlCommand com = new SqlCommand("select * from jobseeker where emailid='" + txtjsforgotemail.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "jobseeker");
                Session["je"] = txtjsforgotemail.Text;

                string k = ds.Tables["jobseeker"].Rows[0]["pass"].ToString();

                Session["jp"] = k;

                string j = ds.Tables["jobseeker"].Rows[0]["security"].ToString();

                Session["secur"] = j;

                string i = ds.Tables["jobseeker"].Rows[0]["answer"].ToString();

                Session["answe"] = i;



                Response.Redirect("~/passrecovery.aspx");
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