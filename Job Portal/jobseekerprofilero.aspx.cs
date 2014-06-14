using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace Job_Portal
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetAllowResponseInBrowserHistory(false);
                Response.Cache.SetNoStore();
                if (Session["ce"] == null)
                {
                    Response.Redirect("Home.aspx");
                }

            }
            string uemail = Session["ue"].ToString();
            try
            {
                if (!Page.IsPostBack)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from jobseeker where emailid='" + uemail + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "jobseeker");

                    lbljsFirst.Text = ds.Tables["jobseeker"].Rows[0]["firstname"].ToString();
                    lbljsLast.Text = ds.Tables["jobseeker"].Rows[0]["lastname"].ToString();
                    lbljsDOB.Text = ds.Tables["jobseeker"].Rows[0]["dob"].ToString();
                    lbljsGender.Text = ds.Tables["jobseeker"].Rows[0]["gender"].ToString();
                    lbljsCity.Text = ds.Tables["jobseeker"].Rows[0]["city"].ToString();
                    lbljsState.Text = ds.Tables["jobseeker"].Rows[0]["state"].ToString();
                    lbljsCountry.Text = ds.Tables["jobseeker"].Rows[0]["country"].ToString();
                    lbljsMobile.Text = ds.Tables["jobseeker"].Rows[0]["phone"].ToString();
                    lblExp.Text = ds.Tables["jobseeker"].Rows[0]["experience"].ToString();
                    lblSkill.Text = ds.Tables["jobseeker"].Rows[0]["skill"].ToString();
                    lblSkill2.Text = ds.Tables["jobseeker"].Rows[0]["skill2"].ToString();
                    lblSkill3.Text = ds.Tables["jobseeker"].Rows[0]["skill3"].ToString();
                    lblSkill4.Text = ds.Tables["jobseeker"].Rows[0]["skill4"].ToString();
                    lblTenper.Text = ds.Tables["jobseeker"].Rows[0]["tenper"].ToString();
                    lblTwelveper.Text = ds.Tables["jobseeker"].Rows[0]["twelveper"].ToString();
                    lbljsUG.Text = ds.Tables["jobseeker"].Rows[0]["ugcourse"].ToString();
                    lblUGper.Text = ds.Tables["jobseeker"].Rows[0]["ugper"].ToString();
                    lbljsPG.Text = ds.Tables["jobseeker"].Rows[0]["pgcourse"].ToString();
                    lblPGper.Text = ds.Tables["jobseeker"].Rows[0]["pgper"].ToString();
                    lbljsEmail.Text = ds.Tables["jobseeker"].Rows[0]["emailid"].ToString();
                    imgjsPhoto.ImageUrl = ds.Tables["jobseeker"].Rows[0]["pic"].ToString();



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

        protected void lbResume_Click(object sender, EventArgs e)
        {
            string loc = "resume/";
            string uemail = Session["ue"].ToString();
            string path = loc + uemail + ".doc";
            Response.Redirect(path);
        }
    }
}