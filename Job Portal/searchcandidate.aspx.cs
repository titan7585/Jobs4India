using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Job_Portal
{
    public partial class WebForm25 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static string[] GetLoc(string prefixText)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            con.Open();

            SqlCommand com = new SqlCommand("select city from jobseeker where city like @city", con);
            com.Parameters.AddWithValue("@city", prefixText + "%");
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(ds);
            con.Close();
            List<string> cityList = new List<string>();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                cityList.Add(ds.Tables[0].Rows[i][0].ToString());
            }
            return cityList.ToArray();

        }

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
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (txtSkill.Text.Length != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                GridView1.DataSourceID = "SqlDataSource1";
                GridView1.DataBind();
            }
            else if (txtSkill.Text.Length != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                GridView1.DataSourceID = "SqlDataSource5";
                GridView1.DataBind();
            }
            else if (txtSkill.Text.Length != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                GridView1.DataSourceID = "SqlDataSource6";
                GridView1.DataBind();
            }
            else if (txtSkill.Text.Length == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                GridView1.DataSourceID = "SqlDataSource7";
                GridView1.DataBind();
            }
            else if (txtSkill.Text.Length != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length == 0)
            {
                GridView1.DataSourceID = "SqlDataSource3";
                GridView1.DataBind();
            }
            else if (txtSkill.Text.Length == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                GridView1.DataSourceID = "SqlDataSource2";
                GridView1.DataBind();
            }
            else if (txtSkill.Text.Length == 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                GridView1.DataSourceID = "SqlDataSource4";
                GridView1.DataBind();
            }
            else
            {
                //lblShow.Text = "Enter atleast one search term.";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sid = "";
            GridViewRow row = GridView1.Rows[GridView1.SelectedIndex];


            sid = row.Cells[3].Text;
            
            Session["ue"] = sid;
            Response.Redirect("~/jobseekerprofilero.aspx");
        }
    }
}