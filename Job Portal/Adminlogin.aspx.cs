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
    public partial class WebForm15 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                string sql = "Select * from admin where email = @email and pass = @pass";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@email", txtAdminlogin.Text);
                com.Parameters.AddWithValue("@pass", txtAdminpass.Text);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "admin");
                if (ds.Tables["admin"].Rows.Count >= 1)
                {
                    string aemail = ds.Tables["admin"].Rows[0]["email"].ToString();
                    string aname = ds.Tables["admin"].Rows[0]["name"].ToString();
                    Session["ae"] = aemail;
                    Session["an"] = aname;
                    Response.Redirect("~/adminprofile.aspx");

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