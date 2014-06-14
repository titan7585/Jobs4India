using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Job_Portal
{
    public partial class WebForm38 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
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
            if (Session["query"] == "all")
            {
                GridView1.DataSourceID = "SqlDataSource1";
            }
            else if (Session["query"] == "cat&exp")
            {
                GridView1.DataSourceID = "SqlDataSource2";
            }
            else if (Session["query"] == "cat&loc")
            {
                GridView1.DataSourceID = "SqlDataSource3";
            }
            else if (Session["query"] == "exp&loc")
            {
                GridView1.DataSourceID = "SqlDataSource4";
            }
            else if (Session["query"] == "cat")
            {
                GridView1.DataSourceID = "SqlDataSource5";
            }
            else if (Session["query"] == "exp")
            {
                GridView1.DataSourceID = "SqlDataSource6";
            }
            else if (Session["query"] == "loc")
            {
                GridView1.DataSourceID = "SqlDataSource7";
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