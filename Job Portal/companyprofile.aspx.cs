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
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string savepath, fname, ext, p, store;
        string loc = "Images/Logo";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetAllowResponseInBrowserHistory(false);
                Response.Cache.SetNoStore();
                if (Session["ce"] == null)
                {
                    Response.Redirect("Home.aspx");
                }

            }
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
                    txtCompanydesc.Text = ds.Tables["company"].Rows[0]["description"].ToString();
                    txtcompanycp.Text = ds.Tables["company"].Rows[0]["contactperson"].ToString();
                    lblCompwebsite.Text = ds.Tables["company"].Rows[0]["website"].ToString();
                    lblCompemail.Text = ds.Tables["company"].Rows[0]["companymail"].ToString();
                    imgLogo.ImageUrl = ds.Tables["company"].Rows[0]["logo"].ToString();


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

        protected void imgbtnUpdate_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                string cemail = Session["ce"].ToString();
                
                string sql = "Update company set description=@desc,contactperson=@cp where companymail=@emailid";
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@emailid", cemail);
                    com.Parameters.AddWithValue("@desc", txtCompanydesc.Text);
                    com.Parameters.AddWithValue("@cp", txtcompanycp.Text);
                    
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

        protected void btnLogoUpload_Click(object sender, EventArgs e)
        {
            string cemail = Session["ce"].ToString();
            savepath = Page.MapPath(loc);
            fname = Path.GetFileName(FileUpload1.PostedFile.FileName);
            ext = Path.GetExtension(FileUpload1.FileName);
            store = "~/Images/Logo/" + cemail + ".jpg";
            if (fname != "")
            {
                ext = Path.GetExtension(fname);

                if ((ext != ".jpg") && (ext != ".gif") && (ext != ".png"))
                {
                    Response.Write("<script>alert('This file type is not supported!!')</script>");
                    return;
                }
                savepath = savepath + "\\" + cemail + ".jpg";
                FileUpload1.PostedFile.SaveAs(savepath);
                //lblShow.Text = "Photo successfully updated";
                p = Path.GetFileName(savepath);
                //imgjsPhoto.ImageUrl = "seekerpic/" + p;


                try
                {

                    con.Open();
                    string sql = "Update company set logo=@logo,contactperson=@cp where companymail=@email";
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@email", cemail);
                    com.Parameters.AddWithValue("@logo", store);
                    com.Parameters.AddWithValue("@cp", txtcompanycp.Text);
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
            else
            {
                Response.Write("<script>alert('Please specify a filename!!')</script>");
            }
        }

        

       
    }
}