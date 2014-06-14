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
    
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static string[] GetName(string prefixText)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            con.Open();
            
            SqlCommand com  = new SqlCommand ("select joblocation from jobposting where joblocation like @jobloc",con);
            com.Parameters.AddWithValue("@jobloc", prefixText+"%" );
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(ds);
            con.Close();
            List<string> nameList = new List<string>();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                nameList.Add(ds.Tables[0].Rows[i][0].ToString());
            }
            return nameList.ToArray();
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drpdwnCategory.DataSourceID = "SqlDataSource8";
            }
            if (!Page.IsPostBack)
            {

                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetAllowResponseInBrowserHistory(false);
                Response.Cache.SetNoStore();
                if (Session["ue"] == null)
                {
                    Response.Redirect("Home.aspx");
                }

            }
                       
        }

       
        protected void imgbtnSearch_Click(object sender, ImageClickEventArgs e)
        {
            

                
                    if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
                    {
                        GridView1.DataSourceID = "SqlDataSource1";
                        GridView1.DataBind();
                    }
                    else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
                    {
                        GridView1.DataSourceID = "SqlDataSource2";
                        GridView1.DataBind();
                    }
                    else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
                    {
                        GridView1.DataSourceID = "SqlDataSource3";
                        GridView1.DataBind();
                    }
                    else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
                    {
                        GridView1.DataSourceID = "SqlDataSource4";
                        GridView1.DataBind();
                    }
                    else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length == 0)
                    {
                        GridView1.DataSourceID = "SqlDataSource5";
                        GridView1.DataBind();
                    }
                    else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
                    {
                        GridView1.DataSourceID = "SqlDataSource6";
                        GridView1.DataBind();
                    }
                    else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
                    {
                        GridView1.DataSourceID = "SqlDataSource7";
                        GridView1.DataBind();
                    }
                    else if (GridView1.Rows.Count == 0)
                    
                    {
                        lblShow.Text = "No matching results.";
                    }


                    
                
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string jid = "";
            GridViewRow row = GridView1.Rows[GridView1.SelectedIndex];


            jid = row.Cells[1].Text;
            con.Open();
            SqlCommand com = new SqlCommand("Select * from jobposting where jobid = @id", con);
            com.Parameters.AddWithValue("@id", jid);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds, "jobposting");

            string id = ds.Tables["jobposting"].Rows[0]["compid"].ToString();
            Session["id"] = id;
            string name = ds.Tables["jobposting"].Rows[0]["compname"].ToString();
            Session["name"] = name;
            string title = ds.Tables["jobposting"].Rows[0]["jobtitle"].ToString();
            Session["title"] = title;
            string minexp = ds.Tables["jobposting"].Rows[0]["minexp"].ToString();
            Session["minexp"] = minexp;
            string date = ds.Tables["jobposting"].Rows[0]["postdate"].ToString();
            Session["date"] = date;
            string desc = ds.Tables["jobposting"].Rows[0]["details"].ToString();
            Session["desc"] = desc;
            string sal = ds.Tables["jobposting"].Rows[0]["minsalary"].ToString();
            Session["sal"] = sal;
            string ind = ds.Tables["jobposting"].Rows[0]["jobcategory"].ToString();
            Session["ind"] = ind;
            string skills = ds.Tables["jobposting"].Rows[0]["skill"].ToString();
            Session["skills"] = skills;
            string edu = ds.Tables["jobposting"].Rows[0]["qualification"].ToString();
            Session["edu"] = edu;
            string notes = ds.Tables["jobposting"].Rows[0]["notes"].ToString();
            Session["notes"] = notes;
            Session["jobid"] = jid;
            
            


            SqlCommand com2 = new SqlCommand("Select logo from company where companymail = @mailid", con);
            com2.Parameters.AddWithValue("@mailid", id);
            SqlDataAdapter da2 = new SqlDataAdapter(com2);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2, "company");

            string logo = ds2.Tables["company"].Rows[0]["logo"].ToString();
            Session["logo"] = logo;

            Session["jid"] = jid.ToString();
            Response.Redirect("~/jobdetails.aspx");
        }
    }
}