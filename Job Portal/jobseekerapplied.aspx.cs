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
    public partial class WebForm35 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

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
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            string uemail = Session["ue"].ToString();
            try
            {
                con.Open();
                sql = "select jobposting.jobid,jobposting.jobtitle,jobposting.compname,jobposting.jobcategory,jobposting.postdate,jobseekerapplied.date from jobposting inner join jobseekerapplied on jobposting.jobid=jobseekerapplied.jobid where jobseekerapplied.emailid=@email";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@email", uemail);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");

                GridView1.DataSource = ds.Tables["jobposting"];
                GridView1.DataBind();
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