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
    public partial class WebForm31 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        protected void imgbtnadjobpost_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                DateTime pd = DateTime.Now;
                DateTime ed = pd.AddDays(30);

                sql = "Insert into jobposting (compid,compname,jobtitle,jobcategory,postdate,expirydate,skill,minexp,qualification,jobdesc,joblocation,minsalary,maxsalary) values (@compid,@compname,@jobtitle,@jobcategory,@postdate,@expirydate,@skill,@minexp,@qualification,@jobdesc,@joblocation,@minsal,@maxsal)";
                com = new SqlCommand(sql, con);

                com.Parameters.AddWithValue("@compid", txtaComemail.Text);
                com.Parameters.AddWithValue("@compname", txtaComname.Text);
                com.Parameters.AddWithValue("@jobtitle", txtaJobtitle.Text);
                com.Parameters.AddWithValue("@jobcategory", drpdwnaJobCat.SelectedValue);
                com.Parameters.AddWithValue("@postdate", pd.Date);
                com.Parameters.AddWithValue("@expirydate", ed.Date);
                com.Parameters.AddWithValue("@skill", txtaSkill.Text);
                com.Parameters.AddWithValue("@minexp", txtaMinexp.Text);
                com.Parameters.AddWithValue("@qualification", txtaQualification.Text);
                com.Parameters.AddWithValue("@jobdesc", txtaDesc.Text);
                com.Parameters.AddWithValue("@joblocation", txtaLoc.Text);
                com.Parameters.AddWithValue("@minsal", txtaMinsal.Text);
                com.Parameters.AddWithValue("@maxsal", txtaMaxsal.Text);
                com.ExecuteNonQuery();

                txtaJobtitle.Text = "";
                txtaSkill.Text = "";
                drpdwnaJobCat.SelectedIndex = 0;
                txtaMinexp.Text = "";
                txtaQualification.Text = "";
                txtaDesc.Text = "";
                txtaLoc.Text = "";
                txtaMinsal.Text = "";
                txtaMaxsal.Text = "";

                lblaShow.Text = "Job posted successfully";
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