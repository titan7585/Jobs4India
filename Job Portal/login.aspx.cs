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
    public partial class WebForm2 : System.Web.UI.Page
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
            try{

                con.Open();
                string sql = "Select * from jobseeker where emailid = @email and pass = @pass";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@email", txtLoginEmail.Text);
                com.Parameters.AddWithValue("@pass", txtLoginPass.Text);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "jobseeker");
                if (ds.Tables["jobseeker"].Rows.Count >= 1)
                {
                    string uemail = ds.Tables["jobseeker"].Rows[0]["emailid"].ToString();
                    string uname = ds.Tables["jobseeker"].Rows[0]["firstname"].ToString();
                    Session["ue"] = uemail;
                    Session["un"] = uname;
                    Response.Redirect("~/Jobseekerprofile.aspx");

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