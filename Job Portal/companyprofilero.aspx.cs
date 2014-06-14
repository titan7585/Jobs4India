using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace Job_Portal
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            string cemail = Session["ce"].ToString();
            try
            {
                if (!Page.IsPostBack)
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from company where companymail='" + cemail + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "company");

                    lblCompname.Text = ds.Tables["company"].Rows[0]["compname"].ToString();
                    lblIndustry.Text = ds.Tables["company"].Rows[0]["industry"].ToString();
                    lblCity.Text = ds.Tables["company"].Rows[0]["city"].ToString();
                    lblState.Text = ds.Tables["company"].Rows[0]["state"].ToString();
                    lblCountry.Text = ds.Tables["company"].Rows[0]["country"].ToString();
                    lblCompdesc.Text = ds.Tables["company"].Rows[0]["description"].ToString();
                    lblCompCP.Text = ds.Tables["company"].Rows[0]["contactperson"].ToString();
                    imgLogo.ImageUrl = ds.Tables["company"].Rows[0]["logo"].ToString();
                    lblCompemail.Text = cemail;


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