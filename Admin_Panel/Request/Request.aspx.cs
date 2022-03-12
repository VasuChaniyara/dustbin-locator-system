using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Panel_Request_Request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillDropDownList();
        }
        if (ddlRegion.SelectedIndex.Equals(5))
        {
            urIframe.Attributes.Add("src", "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3691.7246490727616!2d70.76848201449232!3d22.28841793532979!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959ca2e05d54057%3A0xb23427345f51f5ca!2sIndira%20Circle%2C%20Rajkot%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1579849348855!5m2!1sen!2sin");
        }
        else if (ddlRegion.SelectedIndex.Equals(2))
        {
            urIframe.Attributes.Add("src", "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3691.9391434240506!2d70.7925512!3d22.280295!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959ca156e638e61%3A0xc7dbe9c5850186a2!2sLaxminagar%20Street%20Number%204%2C%20Laxmi%20Nagar%2C%20Chandreshnagar%2C%20Rajkot%2C%20Gujarat%20360005!5e0!3m2!1sen!2sin!4v1579850678971!5m2!1sen!2sin");
        }
        else if (ddlRegion.SelectedIndex.Equals(1))
        {
            urIframe.Attributes.Add("src", "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3692.1939525013827!2d70.78836006449203!3d22.27064168533898!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959ca69b20f6f2f%3A0x7d43b40943520b7f!2sRaiya%20Chokdi%2C%20Naval%20Nagar%2C%20Sardar%20Nagar%2C%20Rajkot%2C%20Gujarat%20360004!5e0!3m2!1sen!2sin!4v1579851257929!5m2!1sen!2sin");
        }
        else if (ddlRegion.SelectedIndex.Equals(3))
        {
            urIframe.Attributes.Add("src", "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14762.569789794516!2d70.75594067255037!3d22.32935831493377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959c9081991860b%3A0xcb3a35575c5c294b!2sMadhapar%2C%20Rajkot%2C%20Gujarat%20360006!5e0!3m2!1sen!2sin!4v1579851306831!5m2!1sen!2sin");
        }
        else if (ddlRegion.SelectedIndex.Equals(4))
        {
            urIframe.Attributes.Add("src", "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3692.393927888797!2d70.78407831449184!3d22.26306293534291!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959ca5dbb9dce8b%3A0xb806abb2548939fb!2sMavdi%20Chowkdi%2C%20Rajkot%2C%20Gujarat%20360004!5e0!3m2!1sen!2sin!4v1579851369077!5m2!1sen!2sin");
        }
    }



protected void btnRequest_Click(object sender, EventArgs e)
    {
        string StrPath = "", Photo = "";
        if (fuImage.HasFile)
        {
            string StrExt = System.IO.Path.GetExtension(fuImage.FileName);
            if (StrExt.ToLower() == ".jpg" || StrExt.ToLower() == ".jpeg" || StrExt.ToLower() == ".png")
            {
                StrPath = "~/Icons/";
                Photo = Path.GetFileName(fuImage.PostedFile.FileName);
                fuImage.PostedFile.SaveAs(Server.MapPath(StrPath) + Photo);
            }
            else
            {
                lblMessage.Text = "only jpeg,jpg or png";
            }

        }
        #region Local Variables
        SqlString strEmail = SqlString.Null;
        SqlString strName = SqlString.Null;
        SqlString strComment = SqlString.Null;
        #endregion Local Variables


        #region Read Data
        if (txtEmail.Text.Trim() != "")
            strEmail = txtEmail.Text.Trim();
        if (txtName.Text.Trim() != "")
            strName = txtName.Text.Trim();

        if (txtComment.Text.Trim() != "")
            strComment = txtComment.Text.Trim();
        #endregion Read Data

        SqlConnection objConn = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        {

            #region Prepare Command
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_Insert_Request";
            objCmd.Parameters.AddWithValue("@Email", strEmail);
            objCmd.Parameters.AddWithValue("@Name", strName);
            objCmd.Parameters.AddWithValue("@Comment", strComment);
            objCmd.Parameters.AddWithValue("@Photo", (StrPath + Photo));
            objCmd.Parameters.AddWithValue("@RegionID", ddlRegion.SelectedValue);
            #endregion Prepare Command
            objCmd.ExecuteNonQuery();
            objConn.Close();
        }
    }

    //
    //

    //
    //
    private void FillDropDownList()
    {
        dbConnection = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        dbConnection.Open();
        SqlDataReader reader;
        SqlCommand objCmd = new SqlCommand();
        objCmd.Connection = dbConnection;
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_Region_SelectDropDownList";
        reader = objCmd.ExecuteReader();
        ddlRegion.DataSource = reader;
        ddlRegion.DataValueField = "RegionID";
        ddlRegion.DataTextField = "RegionName";
        ddlRegion.DataBind();
        dbConnection.Close();

    }
    private SqlConnection dbConnection;
}