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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static string[] GetLoc(string prefixText)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            con.Open();

            SqlCommand com = new SqlCommand("select joblocation from jobposting where joblocation like @jobloc", con);
            com.Parameters.AddWithValue("@jobloc", prefixText + "%");
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(ds);
            con.Close();
            List<string> nameList = new List<string>();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                nameList.Add(ds.Tables[0].Rows[i][0].ToString());
            }
            return nameList.ToArray();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drpdwnCategory.DataSourceID = "SqlDataSource1";
            }
            
        }

        protected void imgbtnHomeLogin_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                /*
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from jobseeker where emailid='" + txtjsEmailid.Text + "'and pass='" + txtjsPassword.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
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
                }*/

                con.Open();
                string sql = "Select * from jobseeker where emailid = @email and pass = @pass";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@email", txtjsEmailid.Text);
                com.Parameters.AddWithValue("@pass", txtjsPassword.Text);
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

        protected void imgbtnHomeSearch_Click(object sender, ImageClickEventArgs e)
        {
            Session["cat"] = drpdwnCategory.SelectedItem.ToString();
            Session["exp"] = drpdwnExp.SelectedItem.ToString();
            Session["loc"] = txtLocation.Text;
            if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "all";
                Response.Redirect("~/homesearchvisitor.aspx");
            }
            else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                Session["query"] = "cat&exp";
                Response.Redirect("~/homesearchvisitor.aspx");
            }
            else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "cat&loc";
                Response.Redirect("~/homesearchvisitor.aspx");
            }
            else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "exp&loc";
                Response.Redirect("~/homesearchvisitor.aspx");
            }
            else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length == 0)
            {
                Session["query"] = "cat";
                Response.Redirect("~/homesearchvisitor.aspx");
            }
            else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                Session["query"] = "exp";
                Response.Redirect("~/homesearchvisitor.aspx");
            }
            else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "loc";
                Response.Redirect("~/homesearchvisitor.aspx");
            }
            else
            {
                Response.Write("<script>alert('Atleast Select One..!!')</script>");
            }
            
        }
    }
}