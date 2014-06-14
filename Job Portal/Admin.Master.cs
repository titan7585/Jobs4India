using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgadbtnhome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/adminprofile.aspx");
        }

        protected void imgbtnlogout_Click(object sender, ImageClickEventArgs e)
        {
            Session["ae"] = null;
            Session["ap"] = null;

            Response.Redirect("~/home.aspx");
        }
    }
}