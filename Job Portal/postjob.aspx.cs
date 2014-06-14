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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
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
        }

        protected void imgbtnJobpost_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                string cemail = Session["ce"].ToString();
                string cname = Session["cn"].ToString();
                DateTime pd = DateTime.Now; 
                DateTime ed = pd.AddDays(30);
                pd.ToShortDateString();
                ed.ToShortDateString();
                
                
                sql = "Insert into jobposting (compid,compname,jobtitle,jobcategory,postdate,expirydate,skill,minexp,qualification,jobdesc,joblocation,minsalary,maxsalary,details,notes) values (@compid,@compname,@jobtitle,@jobcategory,@postdate,@expirydate,@skill,@minexp,@qualification,@jobdesc,@joblocation,@minsal,@maxsal,@details,@notes)";
                com = new SqlCommand(sql, con);
                
                com.Parameters.AddWithValue("@compid", cemail);
                com.Parameters.AddWithValue("@compname", cname);
                com.Parameters.AddWithValue("@jobtitle", txtJobtitle.Text);
                com.Parameters.AddWithValue("@jobcategory", drpdwnJobCat.SelectedValue);
                com.Parameters.AddWithValue("@postdate", pd.Date);
                com.Parameters.AddWithValue("@expirydate", ed.Date);
                com.Parameters.AddWithValue("@skill", txtSkill.Text);
                com.Parameters.AddWithValue("@minexp", txtMinexp.Text);
                com.Parameters.AddWithValue("@qualification", txtQualification.Text);
                com.Parameters.AddWithValue("@jobdesc", txtDesc.Text);
                com.Parameters.AddWithValue("@joblocation", txtLoc.Text);
                com.Parameters.AddWithValue("@minsal", txtMinsal.Text);
                com.Parameters.AddWithValue("@maxsal", txtMaxsal.Text);
                com.Parameters.AddWithValue("@details", txtDetails.Text);
                com.Parameters.AddWithValue("@notes", txtNotes.Text);
                com.ExecuteNonQuery();
                
                txtJobtitle.Text = "";
                txtSkill.Text = "";
                drpdwnJobCat.SelectedIndex = 0;
                txtMinexp.Text = "";
                txtQualification.Text = "";
                txtDesc.Text = "";
                txtLoc.Text = "";
                txtMinsal.Text = "";
                txtMaxsal.Text = "";
                txtDetails.Text = "";
                txtNotes.Text = "";

                lblShow.Text = "Job posted successfully";
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