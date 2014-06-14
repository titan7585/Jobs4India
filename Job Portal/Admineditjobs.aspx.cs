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
    public partial class WebForm30 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            lblcompamail.Visible = false;
            lblcompaname.Visible = false;
            lbladdJobtitle.Visible = false;
            lbladdJobcategory.Visible = false;
            lbladdSkill.Visible = false;
            lbladdMiniexperience.Visible = false;
            lbladdQualification.Visible = false;
            lbladdDescription.Visible = false;
            lbladdLocation.Visible = false;
            lbladdMinsalary.Visible = false;
            lbladdMaxsalary.Visible = false;
            imgbtnedit.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            TextBox9.Visible = false;
            TextBox11.Visible = false;
            TextBox12.Visible = false;

        }

        protected void imgbtnedtsrh_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                string sql = "select * from jobposting where jobid=@jobid";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@jobid", TextBox10.Text);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    TextBox11.Text = ds.Tables["jobposting"].Rows[0]["compid"].ToString();
                    TextBox12.Text = ds.Tables["jobposting"].Rows[0]["compname"].ToString();
                    TextBox1.Text = ds.Tables["jobposting"].Rows[0]["jobtitle"].ToString();
                    TextBox2.Text = ds.Tables["jobposting"].Rows[0]["jobcategory"].ToString();
                    TextBox3.Text = ds.Tables["jobposting"].Rows[0]["skill"].ToString();
                    TextBox4.Text = ds.Tables["jobposting"].Rows[0]["minexp"].ToString();
                    TextBox5.Text = ds.Tables["jobposting"].Rows[0]["qualification"].ToString();
                    TextBox6.Text = ds.Tables["jobposting"].Rows[0]["jobdesc"].ToString();
                    TextBox7.Text = ds.Tables["jobposting"].Rows[0]["joblocation"].ToString();
                    TextBox8.Text = ds.Tables["jobposting"].Rows[0]["minsalary"].ToString();
                    TextBox9.Text = ds.Tables["jobposting"].Rows[0]["maxsalary"].ToString();
                    lblcompamail.Visible = true;
                    lblcompaname.Visible = true;
                    lbladdJobtitle.Visible = true;
                    lbladdJobcategory.Visible = true;
                    lbladdSkill.Visible = true;
                    lbladdMiniexperience.Visible = true;
                    lbladdQualification.Visible = true;
                    lbladdDescription.Visible = true;
                    lbladdLocation.Visible = true;
                    lbladdMinsalary.Visible = true;
                    lbladdMaxsalary.Visible = true;
                    imgbtnedit.Visible = true;
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    TextBox5.Visible = true;
                    TextBox6.Visible = true;
                    TextBox7.Visible = true;
                    TextBox8.Visible = true;
                    TextBox9.Visible = true;
                    TextBox11.Visible = true;
                    TextBox12.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Company Does Not Exists..!!')</script>");
                    TextBox10.Text = "";
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

        protected void imgbtnedit_Click(object sender, ImageClickEventArgs e)
        {
            try
            {


                con.Open();
                SqlCommand com = new SqlCommand(" Update jobposting set compid=@compid,compname=@compname,jobtitle=@jobtitle,jobcategory=@jobcategory,skill=@skill,minexp=@minexp,qualification=@qualification,jobdesc=@jobdesc,joblocation=@joblocation,minsalary=@minsalary,maxsalary=@maxsalary ", con);
                com.Parameters.AddWithValue("@compid", TextBox11.Text);
                com.Parameters.AddWithValue("@compname", TextBox12.Text);
                com.Parameters.AddWithValue("@jobtitle", TextBox1.Text);
                com.Parameters.AddWithValue("@jobcategory", TextBox2.Text);
                com.Parameters.AddWithValue("@skill", TextBox3.Text);
                com.Parameters.AddWithValue("@minexp", TextBox4.Text);
                com.Parameters.AddWithValue("@qualification", TextBox5.Text);
                com.Parameters.AddWithValue("@jobdesc", TextBox6.Text);
                com.Parameters.AddWithValue("@joblocation", TextBox7.Text);
                com.Parameters.AddWithValue("@minsalary", TextBox8.Text);
                com.Parameters.AddWithValue("@maxsalary", TextBox9.Text);


                com.ExecuteNonQuery();
                // lblshw.Text = "Sucessfullt updated...";
                Response.Write("<script>alert('Successfully Updated..!!')</script>");
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