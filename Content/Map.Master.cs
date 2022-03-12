using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GettingStarted
{
    public partial class Map : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Session["UserID"] != null)
                {
                    hlLogout.Visible = true;
                    hlLocation.Visible = true;
                    hlFeedback.Visible = true;
                    hlLogin.Visible = false;
                }


            }

        }

        protected void hlLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Admin_Panel/Access/Login.aspx");
        }
    }
}
