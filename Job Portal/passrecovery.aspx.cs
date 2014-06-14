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
    public partial class WebForm27 : System.Web.UI.Page
    {
        string m;
        string n;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["je"] != null)
            {
                lbljobseekeremail.Text = Session["je"].ToString();
                lbljsseekersecurity.Text = Session["secur"].ToString();



            }
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["answe"] != null)
            {


                m = Session["answe"].ToString();
                n = txtyourans.Text;


                if (n == m)
                {

                    txtyourpass.Text = Session["jp"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('The answer is Incorrect !!')</script>");
                }


            }
        }
    }
}