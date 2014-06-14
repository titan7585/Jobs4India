using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class WebForm36 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ce"] = Session["id"].ToString();
            if (Session["id"] != null)
            {
                imgCompLogo.ImageUrl = Session["logo"].ToString();
                lblCompname.Text = Session["name"].ToString();
                lblJobtitle.Text = Session["title"].ToString();
                lblMinexp.Text = Session["minexp"].ToString();
                lblPostdate.Text = Session["date"].ToString();
                lblDesc.Text = Session["desc"].ToString();
                lblEducation.Text = Session["edu"].ToString();
                lblIndustry.Text = Session["ind"].ToString();
                lblSalary.Text = Session["sal"].ToString();
                lblSkills.Text = Session["skills"].ToString();
                lblNotes.Text = Session["notes"].ToString();
                
                
            }
        }
    }
}