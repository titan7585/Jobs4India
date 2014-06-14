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
    public partial class WebForm32 : System.Web.UI.Page
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
            con.Open();
            string sql = "delete jobposting where jobid = @jobid";
            SqlCommand com = new SqlCommand(sql, con);
            com.Parameters.AddWithValue("@jobid", TextBoxadjobid.Text);

            com.ExecuteNonQuery();
            Response.Write("<script>alert('Successfully Deleted..!!')</script>");
            TextBoxadjobid.Text = "";

            con.Close();
        }
    }
}