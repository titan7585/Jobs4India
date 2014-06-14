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
    public partial class WebForm17 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        protected void ImageButtonadsubmit_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid)
            {

                try
                {

                    con.Open();
                    sql = "Insert into company(companymail,pass,compname,industry,city,state,country,description,contactperson) values (@email,@pass,@name,@industry,@city,@state,@country,@desc,@person)";
                    com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@email", txtadCompEmail.Text);
                    com.Parameters.AddWithValue("@pass", txtadCompPass.Text);
                    com.Parameters.AddWithValue("@name", txtadCompName.Text);
                    com.Parameters.AddWithValue("@industry", drpdwnadIndustry.SelectedValue);
                    com.Parameters.AddWithValue("@city", txtadCompCity.Text);
                    com.Parameters.AddWithValue("@state", txtadCompState.Text);
                    com.Parameters.AddWithValue("@country", txtadCompCountry.Text);
                    com.Parameters.AddWithValue("@desc", txtadCompDesc.Text);
                    com.Parameters.AddWithValue("@person", txtadCompCP.Text);
                    com.ExecuteNonQuery();
                    Response.Write("<script>alert('Successfully added..!!')</script>");

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