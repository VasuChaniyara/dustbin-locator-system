using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Panel_Location_LocationAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    #region btnSave_Click
    protected void btnSave_Click(object sender, EventArgs e)
    {
        #region Local Variables
        SqlString strLogitude = SqlString.Null;
        SqlString strLatitude = SqlString.Null;
        #endregion Local Variables


        #region Read Data
        if (txtLogitude.Text.Trim() != "")
            strLogitude = txtLogitude.Text.Trim();
        if (txtLatitude.Text.Trim() != "")
            strLatitude = txtLatitude.Text.Trim();

        #endregion Read Data
        SqlConnection objConn = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        {

            #region Prepare Command
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_Insert_Location";
            objCmd.Parameters.AddWithValue("@longitude", strLogitude);
            objCmd.Parameters.AddWithValue("@latitude", strLatitude);
            #endregion Prepare Command
            objCmd.ExecuteNonQuery();
            objConn.Close();
        }
                    if (Request.QueryString["LocationID"] == null)
                    {
                        lblMessage.Text = "Data Inserted Successfuly.....";
                        txtLogitude.Text = "";
                        txtLatitude.Text = "";
                        txtLogitude.Focus();
                    }
                    else
                    {
                        Response.Redirect("~/Admin_Panel/Location/Location.aspx");
                    }
                }

            
        


    
    #endregion
}