using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Panel_Location_Location : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillLocationGridView();
    }
    public void FillLocationGridView()
    {
        SqlConnection objConn = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConn.Open();
        SqlCommand objcmd = new SqlCommand();
        objcmd.Connection = objConn;
        objcmd.CommandType = CommandType.StoredProcedure;
        objcmd.CommandText = "PR_Location_SelectAll";
        SqlDataReader objSDR = objcmd.ExecuteReader();
        DataTable dtLocation = new DataTable();
        dtLocation.Load(objSDR);
        gvLocation.DataSource = dtLocation;
        gvLocation.DataBind();
  

        objConn.Close();
    }
    #region gvLocation_RowCommand
    protected void gvLocation_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteRecord" && e.CommandArgument != null)
        {
            DeleteLocation(Convert.ToInt32(e.CommandArgument));
            FillLocationGridView();
        }
    }
    #endregion
    #region DeleteLocation
    private void DeleteLocation(Int32 LocationID)
    {
        SqlConnection objConn = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConn.Open();
            SqlCommand objCmd = new SqlCommand();
            objCmd.Connection = objConn;
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_Location_DeleteByPK";
            objCmd.Parameters.AddWithValue("@LocationID", LocationID);
            objCmd.ExecuteNonQuery();
      

    }
    #endregion
}