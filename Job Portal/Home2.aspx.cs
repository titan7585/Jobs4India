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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static string[] GetLoc(string prefixText)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            con.Open();

            SqlCommand com = new SqlCommand("select joblocation from jobposting where joblocation like @jobloc", con);
            com.Parameters.AddWithValue("@jobloc", prefixText + "%");
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
            if (Session["ue"] != null)
            {
                lblShowid.Text = Session["un"].ToString();
            }
            if (!IsPostBack)
            {
                drpdwnCategory.DataSourceID = "SqlDataSource1";
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

        protected void imgbtnHomeSearch_Click(object sender, ImageClickEventArgs e)
        {
            Session["cat"] = drpdwnCategory.SelectedItem.ToString();
            Session["exp"] = drpdwnExp.SelectedItem.ToString();
            Session["loc"] = txtLocation.Text;
            if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "all";
                Response.Redirect("~/homesearch.aspx");
            }
            else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                Session["query"] = "cat&exp";
                Response.Redirect("~/homesearch.aspx");
            }
            else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "cat&loc";
                Response.Redirect("~/homesearch.aspx");
            }
            else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "exp&loc";
                Response.Redirect("~/homesearch.aspx");
            }
            else if (drpdwnCategory.SelectedIndex != 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length == 0)
            {
                Session["query"] = "cat";
                Response.Redirect("~/homesearch.aspx");
            }
            else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                Session["query"] = "exp";
                Response.Redirect("~/homesearch.aspx");
            }
            else if (drpdwnCategory.SelectedIndex == 0 & drpdwnExp.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                Session["query"] = "loc";
                Response.Redirect("~/homesearch.aspx");
            }
            else
            {
                Response.Write("<script>alert('Atleast Select One..!!')</script>");
            }
        }

    }
}