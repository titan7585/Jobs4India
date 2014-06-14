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
    public partial class WebForm28 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid)
            {

                try
                {
                    con.Open();
                    string sql = "update admin set pass=@newpass where pass=@pass and email=@email";
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@newpass", txtNewpass.Text);
                    com.Parameters.AddWithValue("@pass", txtOldpass.Text);
                    com.Parameters.AddWithValue("@email", txtId.Text);
                    com.ExecuteNonQuery();
                    Response.Write("<script>alert('Your New Password Has Been Changed Successfully.!!')</script>");
                    txtId.Text = "";
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
}