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
    public partial class WebForm19 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataAdapter da;
        string sql;
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static string[] GetName(string prefixText)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            con.Open();

            SqlCommand com = new SqlCommand("select distinct joblocation from jobposting where joblocation like @jobloc", con);
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
            GridView1.Visible = true;
            try
            {

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
                con.Open();
                if (IsPostBack == false)
                {
                    string sql = "Select distinct jobcategory from jobposting";
                    SqlCommand com = new SqlCommand(sql, con);
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "jobposting");
                    drpdwnlstCategory.AppendDataBoundItems = true;
                    ListItem li = new ListItem();
                    li.Text = "--Select--";
                    //li.Value = "Select";
                    drpdwnlstCategory.Items.Add(li);
                    drpdwnlstCategory.DataSource = ds.Tables[0].DefaultView;
                    drpdwnlstCategory.DataTextField = "jobcategory";
                    //drpdwnlstCategory.DataValueField = "jobid";
                    drpdwnlstCategory.DataBind();
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            con.Open();
            if (drpdwnlstCategory.SelectedIndex != 0 & drpdwnlstExperiance.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                SqlCommand com = new SqlCommand("select * from jobposting where jobcategory=@category and minexp=@exp and joblocation like @location", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                com.Parameters.AddWithValue("@category", drpdwnlstCategory.SelectedItem.Text);
                com.Parameters.AddWithValue("@exp", drpdwnlstExperiance.SelectedItem.Text);
                com.Parameters.AddWithValue("@location", txtLocation.Text + "%");
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Result Found ..!!')</script>");

                }

            }
            else if (drpdwnlstCategory.SelectedIndex != 0 & drpdwnlstExperiance.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                SqlCommand com = new SqlCommand("select * from jobposting where jobcategory=@category and minexp=@exp", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                com.Parameters.AddWithValue("@category", drpdwnlstCategory.SelectedItem.Text);
                com.Parameters.AddWithValue("@exp", drpdwnlstExperiance.SelectedItem.Text);
                //com.Parameters.AddWithValue("@location", txtLocation.Text + "%");
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Result Found ..!!')</script>");
                }
            }
            else if (drpdwnlstCategory.SelectedIndex != 0 & drpdwnlstExperiance.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                SqlCommand com = new SqlCommand("select * from jobposting where jobcategory=@category and joblocation like @location", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                com.Parameters.AddWithValue("@category", drpdwnlstCategory.SelectedItem.Text);
                //com.Parameters.AddWithValue("@exp", drpdwnlstExperiance.SelectedItem.Text);
                com.Parameters.AddWithValue("@location", txtLocation.Text + "%");
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Result Found ..!!')</script>");
                }
            }
            else if (drpdwnlstCategory.SelectedIndex == 0 & drpdwnlstExperiance.SelectedIndex != 0 & txtLocation.Text.Length != 0)
            {
                SqlCommand com = new SqlCommand("select * from jobposting where minexp=@exp and joblocation like @location", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                //com.Parameters.AddWithValue("@category", drpdwnlstCategory.SelectedItem.Text);
                com.Parameters.AddWithValue("@exp", drpdwnlstExperiance.SelectedItem.Text);
                com.Parameters.AddWithValue("@location", txtLocation.Text + "%");
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Result Found ..!!')</script>");
                }
            }
            else if (drpdwnlstCategory.SelectedIndex != 0 & drpdwnlstExperiance.SelectedIndex == 0 & txtLocation.Text.Length == 0)
            {
                SqlCommand com = new SqlCommand("select * from jobposting where jobcategory=@category", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                com.Parameters.AddWithValue("@category", drpdwnlstCategory.SelectedItem.Text);
                //com.Parameters.AddWithValue("@exp", drpdwnlstExperiance.SelectedItem.Text);
                //com.Parameters.AddWithValue("@location", txtLocation.Text + "%");
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Result Found ..!!')</script>");
                }
            }
            else if (drpdwnlstCategory.SelectedIndex == 0 & drpdwnlstExperiance.SelectedIndex != 0 & txtLocation.Text.Length == 0)
            {
                SqlCommand com = new SqlCommand("select * from jobposting where minexp=@exp", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                //com.Parameters.AddWithValue("@category", drpdwnlstCategory.SelectedItem.Text);
                com.Parameters.AddWithValue("@exp", drpdwnlstExperiance.SelectedItem.Text);
                //com.Parameters.AddWithValue("@location", txtLocation.Text + "%");
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Result Found ..!!')</script>");
                }
            }
            else if (drpdwnlstCategory.SelectedIndex == 0 & drpdwnlstExperiance.SelectedIndex == 0 & txtLocation.Text.Length != 0)
            {
                SqlCommand com = new SqlCommand("select * from jobposting where joblocation like @location", con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                //com.Parameters.AddWithValue("@category", drpdwnlstCategory.SelectedItem.Text);
                //com.Parameters.AddWithValue("@exp", drpdwnlstExperiance.SelectedItem.Text);
                com.Parameters.AddWithValue("@location", txtLocation.Text + "%");
                DataSet ds = new DataSet();
                da.Fill(ds, "jobposting");
                if (ds.Tables["jobposting"].Rows.Count >= 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Result Found ..!!')</script>");
                }
            }
            else
            {

                Response.Write("<script>alert('Atleast Select One..!!')</script>");
            }



            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}