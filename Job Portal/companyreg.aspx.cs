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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        protected void imgbtnCompreg_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid)
            {

                try
                {

                    con.Open();
                    sql = "Insert into company(companymail,pass,compname,industry,city,state,country,description,contactperson,website) values (@email,@pass,@name,@industry,@city,@state,@country,@desc,@person,@website)";
                    com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@email", txtCompEmail.Text);
                    com.Parameters.AddWithValue("@pass", txtCompPass.Text);
                    com.Parameters.AddWithValue("@name", txtCompName.Text);
                    com.Parameters.AddWithValue("@industry", drpdwnIndustry.SelectedValue);
                    com.Parameters.AddWithValue("@city", txtCompCity.Text);
                    com.Parameters.AddWithValue("@state", txtCompState.Text);
                    com.Parameters.AddWithValue("@country", txtCompCountry.Text);
                    com.Parameters.AddWithValue("@desc", txtCompDesc.Text);
                    com.Parameters.AddWithValue("@person", txtCompCP.Text);
                    com.Parameters.AddWithValue("@website", txtCompwebsite.Text);
                    com.ExecuteNonQuery();
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