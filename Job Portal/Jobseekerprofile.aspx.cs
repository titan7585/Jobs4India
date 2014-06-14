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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string savepath, fname, ext, p, store, savepathresume, fnameresume, extresume, presume, storeresume;
        string loc = "Images/seekerpic";
        string resumeloc = "resume";

        protected void Page_Load(object sender, EventArgs e)
        {
            /*Response.Buffer= true;
            Response.ExpiresAbsolute=DateTime.Now.AddMinutes(-1);
            Response.Expires =-1;
            Response.CacheControl = "no-cache";
            */
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



            string uemail = Session["ue"].ToString();
            try
            {
                if (!Page.IsPostBack)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from jobseeker where emailid='" + uemail + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "jobseeker");

                    lbljsFirst.Text = ds.Tables["jobseeker"].Rows[0]["firstname"].ToString();
                    lbljsLast.Text = ds.Tables["jobseeker"].Rows[0]["lastname"].ToString();
                    lbljsDOB.Text = ds.Tables["jobseeker"].Rows[0]["dob"].ToString();
                    lbljsGender.Text = ds.Tables["jobseeker"].Rows[0]["gender"].ToString();
                    lbljsCity.Text = ds.Tables["jobseeker"].Rows[0]["city"].ToString();
                    lbljsState.Text = ds.Tables["jobseeker"].Rows[0]["state"].ToString();
                    lbljsCountry.Text = ds.Tables["jobseeker"].Rows[0]["country"].ToString();
                    lbljsMobile.Text = ds.Tables["jobseeker"].Rows[0]["phone"].ToString();
                    txtjsExperience.Text = ds.Tables["jobseeker"].Rows[0]["experience"].ToString();
                    txtjsSkill.Text = ds.Tables["jobseeker"].Rows[0]["skill"].ToString();
                    txtjsSkill2.Text = ds.Tables["jobseeker"].Rows[0]["skill2"].ToString();
                    txtjsSkill3.Text = ds.Tables["jobseeker"].Rows[0]["skill3"].ToString();
                    txtjsSkill4.Text = ds.Tables["jobseeker"].Rows[0]["skill4"].ToString();
                    txtjsTenper.Text = ds.Tables["jobseeker"].Rows[0]["tenper"].ToString();
                    txtjsTwlvwper.Text = ds.Tables["jobseeker"].Rows[0]["twelveper"].ToString();
                    lbljsUG.Text = ds.Tables["jobseeker"].Rows[0]["ugcourse"].ToString();
                    txtjsUgper.Text = ds.Tables["jobseeker"].Rows[0]["ugper"].ToString();
                    lbljsPG.Text = ds.Tables["jobseeker"].Rows[0]["pgcourse"].ToString();
                    txtjsPgper.Text = ds.Tables["jobseeker"].Rows[0]["pgper"].ToString();
                    lbljsEmail.Text = ds.Tables["jobseeker"].Rows[0]["emailid"].ToString();
                    imgjsPhoto.ImageUrl = ds.Tables["jobseeker"].Rows[0]["pic"].ToString();



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

        protected void imgbtnjsUpdate_Click(object sender, ImageClickEventArgs e)
        {
            
            try
            {
                

                    con.Open();
                    string uemail = Session["ue"].ToString();
                    


                    
                    //string sql = "Update jobseeker set skill=@skill,experience=@experience,tenper=@tenper,twelveper=@twelveper,ugcourse=@ugcourse,ugper=@ugper,pgcourse=@pgcourse,pgper=@pgper where emailid=@emailid";
                    if (drpdwnUgcourse.SelectedIndex != 0 & drpdwnPgcourse.SelectedIndex != 0)
                    {

                        SqlCommand com = new SqlCommand("Update jobseeker set skill=@skill,skill2=@skill2,skill3=@skill3,skill4=@skill4,experience=@experience,tenper=@tenper,twelveper=@twelveper,ugcourse=@ugcourse,ugper=@ugper,pgcourse=@pgcourse,pgper=@pgper where emailid=@emailid", con);
                        com.Parameters.AddWithValue("@emailid", lbljsEmail.Text);
                        com.Parameters.AddWithValue("@skill", txtjsSkill.Text);
                        com.Parameters.AddWithValue("@skill2", txtjsSkill2.Text);
                        com.Parameters.AddWithValue("@skill3", txtjsSkill3.Text);
                        com.Parameters.AddWithValue("@skill4", txtjsSkill4.Text);
                        com.Parameters.AddWithValue("@experience", txtjsExperience.Text);
                        com.Parameters.AddWithValue("@tenper", txtjsTenper.Text);
                        com.Parameters.AddWithValue("@twelveper", txtjsTwlvwper.Text);
                        com.Parameters.AddWithValue("@ugcourse", drpdwnUgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@ugper", txtjsUgper.Text);
                        com.Parameters.AddWithValue("@pgcourse", drpdwnPgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@pgper", txtjsPgper.Text);
                        com.ExecuteNonQuery();
                    }
                    else if (drpdwnUgcourse.SelectedIndex != 0 & drpdwnPgcourse.SelectedIndex == 0)
                    {
                        SqlCommand com = new SqlCommand("Update jobseeker set skill=@skill,skill2=@skill2,skill3=@skill3,skill4=@skill4,experience=@experience,tenper=@tenper,twelveper=@twelveper,ugcourse=@ugcourse,ugper=@ugper,pgper=@pgper where emailid=@emailid", con);
                        com.Parameters.AddWithValue("@emailid", lbljsEmail.Text);
                        com.Parameters.AddWithValue("@skill", txtjsSkill.Text);
                        com.Parameters.AddWithValue("@skill2", txtjsSkill2.Text);
                        com.Parameters.AddWithValue("@skill3", txtjsSkill3.Text);
                        com.Parameters.AddWithValue("@skill4", txtjsSkill4.Text);
                        com.Parameters.AddWithValue("@experience", txtjsExperience.Text);
                        com.Parameters.AddWithValue("@tenper", txtjsTenper.Text);
                        com.Parameters.AddWithValue("@twelveper", txtjsTwlvwper.Text);
                        com.Parameters.AddWithValue("@ugcourse", drpdwnUgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@ugper", txtjsUgper.Text);
                        //com.Parameters.AddWithValue("@pgcourse", drpdwnPgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@pgper", txtjsPgper.Text);
                        com.ExecuteNonQuery();
                    }
                    else if (drpdwnUgcourse.SelectedIndex == 0 & drpdwnPgcourse.SelectedIndex != 0)
                    {
                        SqlCommand com = new SqlCommand("Update jobseeker set skill=@skill,skill2=@skill2,skill3=@skill3,skill4=@skill4,experience=@experience,tenper=@tenper,twelveper=@twelveper,ugper=@ugper,pgcourse=@pgcourse,pgper=@pgper where emailid=@emailid", con);
                        com.Parameters.AddWithValue("@emailid", lbljsEmail.Text);
                        com.Parameters.AddWithValue("@skill", txtjsSkill.Text);
                        com.Parameters.AddWithValue("@skill2", txtjsSkill2.Text);
                        com.Parameters.AddWithValue("@skill3", txtjsSkill3.Text);
                        com.Parameters.AddWithValue("@skill4", txtjsSkill4.Text);
                        com.Parameters.AddWithValue("@experience", txtjsExperience.Text);
                        com.Parameters.AddWithValue("@tenper", txtjsTenper.Text);
                        com.Parameters.AddWithValue("@twelveper", txtjsTwlvwper.Text);
                        //com.Parameters.AddWithValue("@ugcourse", drpdwnUgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@ugper", txtjsUgper.Text);
                        com.Parameters.AddWithValue("@pgcourse", drpdwnPgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@pgper", txtjsPgper.Text);
                        com.ExecuteNonQuery();
                    }
                    else if (drpdwnUgcourse.SelectedIndex == 0 & drpdwnPgcourse.SelectedIndex == 0)
                    {
                        SqlCommand com = new SqlCommand("Update jobseeker set skill=@skill,skill2=@skill2,skill3=@skill3,skill4=@skill4,experience=@experience,tenper=@tenper,twelveper=@twelveper,ugper=@ugper,pgper=@pgper where emailid=@emailid", con);
                        com.Parameters.AddWithValue("@emailid", lbljsEmail.Text);
                        com.Parameters.AddWithValue("@skill", txtjsSkill.Text);
                        com.Parameters.AddWithValue("@skill2", txtjsSkill2.Text);
                        com.Parameters.AddWithValue("@skill3", txtjsSkill3.Text);
                        com.Parameters.AddWithValue("@skill4", txtjsSkill4.Text);
                        com.Parameters.AddWithValue("@experience", txtjsExperience.Text);
                        com.Parameters.AddWithValue("@tenper", txtjsTenper.Text);
                        com.Parameters.AddWithValue("@twelveper", txtjsTwlvwper.Text);
                        //com.Parameters.AddWithValue("@ugcourse", drpdwnUgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@ugper", txtjsUgper.Text);
                        //com.Parameters.AddWithValue("@pgcourse", drpdwnPgcourse.SelectedValue);
                        com.Parameters.AddWithValue("@pgper", txtjsPgper.Text);
                        com.ExecuteNonQuery();
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

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //E:\Project backups\2\update job portal\Job Portal\seekerpic Images\update.gif'
            
            string uemail = Session["ue"].ToString();
            savepath = Page.MapPath(loc);
            fname = Path.GetFileName(FileUpload2.PostedFile.FileName);
            ext = Path.GetExtension(FileUpload2.FileName);
            store = "~/Images/seekerpic/" + uemail + ".jpg";
            if (fname != "")
            {
                ext = Path.GetExtension(fname);

                if ((ext != ".jpg") && (ext != ".gif") && (ext != ".png"))
                {
                    Response.Write("<script>alert('This file type is not supported!!')</script>");
                    return;
                }
                savepath = savepath + "\\" + uemail + ".jpg";
                FileUpload2.PostedFile.SaveAs(savepath);
                lblShow.Text =  "Photo successfully updated";
                p = Path.GetFileName(savepath);
                //imgjsPhoto.ImageUrl = "seekerpic/" + p;


                try
                {

                    con.Open();
                    string sql = "Update jobseeker set pic=@pic where emailid=@email";
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@email", lbljsEmail.Text);
                    com.Parameters.AddWithValue("@pic", store);
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

        protected void btnResumeUpload_Click(object sender, EventArgs e)
        {
            string uemail = Session["ue"].ToString();
            savepathresume = Page.MapPath(resumeloc);
            fnameresume = Path.GetFileName(FileUpload1.PostedFile.FileName);
            extresume = Path.GetExtension(FileUpload1.FileName);
            storeresume = "~/resume/" + uemail + ".doc";
            if (fnameresume != "")
            {
                extresume = Path.GetExtension(fnameresume);

                if ((extresume != ".doc") && (extresume != ".docx"))
                {
                    Response.Write("<script>alert('This file type is not supported!!')</script>");
                    //lblExttest.Text = extresume.ToString();
                    return;
                }
                savepathresume = savepathresume + "\\" + uemail + ".doc";
                FileUpload1.PostedFile.SaveAs(savepathresume);
                //lblShow.Text =  "Photo successfully updated";
                presume = Path.GetFileName(savepathresume);

                try
                {

                    con.Open();
                    string sql = "Update jobseeker set resume=@resume where emailid=@email";
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@email", lbljsEmail.Text);
                    com.Parameters.AddWithValue("@resume", storeresume);
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
                Response.Write("<script>alert('Resume Uploaded!!')</script>");

            }
            else
            {
                Response.Write("<script>alert('Please specify a filename!!')</script>");
            }
        }
    }
}