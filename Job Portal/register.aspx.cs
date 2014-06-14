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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        }

        

        protected void imgbtnRegister_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    con.Open();
                    sql = "Insert into jobseeker (emailid,pass,firstname,lastname,gender,dob,city,state,country,phone,security,answer) values(@mail, @pass,@first,@last,@gender,@dob,@city,@state,@country,@phone,@security,@answer)";
                    com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@mail", txtEmail.Text);
                    com.Parameters.AddWithValue("@pass", txtPass.Text);
                    com.Parameters.AddWithValue("@first", txtFirst.Text);
                    com.Parameters.AddWithValue("@last", txtLast.Text);
                    com.Parameters.AddWithValue("@gender",ddlGender.SelectedValue);
                    com.Parameters.AddWithValue("@dob", txtDOB.Text);
                    com.Parameters.AddWithValue("@city", txtCity.Text);
                    com.Parameters.AddWithValue("@state", txtState.Text);
                    com.Parameters.AddWithValue("@country", txtCountry.Text);
                    com.Parameters.AddWithValue("@phone", txtMobile.Text);
                    com.Parameters.AddWithValue("@security", drpdwnSecurity.SelectedValue);
                    com.Parameters.AddWithValue("@answer", txtAnswer.Text);
                    com.ExecuteNonQuery();
                    txtEmail.Text = "";
                    txtFirst.Text = "";
                    txtLast.Text = "";
                    txtDOB.Text = "";
                    ddlGender.SelectedIndex = 0;
                    txtCity.Text = "";
                    txtState.Text = "";
                    txtCountry.Text = "";
                    txtMobile.Text = "";
                    txtAnswer.Text = "";

                    lblShow.Text = "You have been successfully registered.";
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