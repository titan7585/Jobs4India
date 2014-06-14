using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Job_Portal
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection con =  new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
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
            Session["ce"] = Session["id"].ToString();
            if (Session["id"] != null)
            {
                imgCompLogo.ImageUrl = Session["logo"].ToString();
                lblCompname.Text = Session["name"].ToString();
                lblJobtitle.Text = Session["title"].ToString();
                lblMinexp.Text = Session["minexp"].ToString();
                lblPostdate.Text = Session["date"].ToString();
                lblDesc.Text = Session["desc"].ToString();
                lblEducation.Text = Session["edu"].ToString();
                lblIndustry.Text = Session["ind"].ToString();
                lblSalary.Text = Session["sal"].ToString();
                lblSkills.Text = Session["skills"].ToString();
                lblNotes.Text = Session["notes"].ToString();
                
            }
        }

        protected void imgbtnApply_Click(object sender, ImageClickEventArgs e)
        {
            string jid = Session["jobid"].ToString();
            string uemail = Session["ue"].ToString();
            DateTime applydate = DateTime.Now;
            try{

                con.Open();
                string sql = "Select * from jobseekerapplied where emailid = @email and jobid = @jobid";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@email", uemail);
                com.Parameters.AddWithValue("@jobid", jid);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "jobseekerapplied");
                if (ds.Tables["jobseekerapplied"].Rows.Count >= 1)
                {
                    Response.Write("<script>alert('You have already applied for this job!!')</script>");
                }
                else
                {

                    string sql2 = "Insert into jobseekerapplied(emailid,jobid,date) values (@email, @jobid, @date)";
                    SqlCommand com2 = new SqlCommand(sql2, con);
                    com2.Parameters.AddWithValue("@email", uemail);
                    com2.Parameters.AddWithValue("@jobid", jid);
                    com2.Parameters.AddWithValue("@date", applydate.Date);
                    com2.ExecuteNonQuery();
                    Response.Write("<script>alert('Job Applied!!')</script>");
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