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
    public partial class WebForm18 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

            lbleCmpindustry.Visible = false;
            lbleCmpdescription.Visible = false;
            lbleCmpcntact.Visible = false;
            lbleCmpname.Visible = false;
            txtadCmpname.Visible = false;
            txtCmpindustry.Visible = false;
            txtCmpdescription.Visible = false;
            txtCmpcnperson.Visible = false;

            ImageButtonupdate.Visible = false;
        }

        protected void ImageButtonserch_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                string sql = "select * from company where companymail=@companymail";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@companymail", txtCmpmmail.Text);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "company");
                if (ds.Tables["company"].Rows.Count >= 1)
                {
                    txtadCmpname.Text = ds.Tables["company"].Rows[0]["compname"].ToString();
                    txtCmpindustry.Text = ds.Tables["company"].Rows[0]["industry"].ToString();
                    txtCmpdescription.Text = ds.Tables["company"].Rows[0]["description"].ToString();
                    txtCmpcnperson.Text = ds.Tables["company"].Rows[0]["contactperson"].ToString();

                    //lbleCmpmail.Visible = true;
                    lbleCmpname.Visible = true;
                    lbleCmpindustry.Visible = true;
                    lbleCmpdescription.Visible = true;
                    lbleCmpcntact.Visible = true;
                    //txtCmpmmail.Visible = true;
                    txtadCmpname.Visible = true;
                    txtCmpindustry.Visible = true;
                    txtCmpdescription.Visible = true;
                    txtCmpcnperson.Visible = true;

                    ImageButtonupdate.Visible = true;

                }
                else
                {
                    Response.Write("<script>alert('Company Does Not Exists..!!')</script>");
                    txtadCmpname.Text = "";
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

        protected void ImageButtonupdate_Click(object sender, ImageClickEventArgs e)
        {
            try
            {


                con.Open();
                SqlCommand com = new SqlCommand("Update company set compname=@compname,industry=@industry,description=@description,contactperson=@contactperson", con);
                com.Parameters.AddWithValue("@compname", txtadCmpname.Text);
                com.Parameters.AddWithValue("@industry", txtCmpindustry.Text);
                //com.Parameters.AddWithValue("@compname", txtadCmpname.Text);
                com.Parameters.AddWithValue("@description", txtCmpdescription.Text);
                com.Parameters.AddWithValue("@contactperson", txtCmpcnperson.Text);
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