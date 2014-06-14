using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Master3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["ae"] = null;
            Session["an"] = null;
            Response.Redirect("~/Home.aspx");
            Session.Clear();
            Session.Contents.RemoveAll();
            Session.Contents.Abandon();
            Response.Redirect("~/Home.aspx");
        }
    }
}