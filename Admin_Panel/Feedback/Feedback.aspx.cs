using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Panel_Feedback_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //FillReportGridView();
        //FillRequestGridView();
        FillTestGridView();
        FillRequestGridView();
    }
    /*private void FillReportGridView()
    {
        SqlConnection objConnection = new SqlConnection("Data Source=GHANSHYAM;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConnection.Open();
        SqlCommand objCmd = new SqlCommand();
        objCmd.Connection = objConnection;
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_Report_SelectAll";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        gvReport.DataSource = objSDR;
        gvReport.DataBind();
        objConnection.Close();
    }
    protected void gvReport_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteReport")
        {
            //lblMsg.Text = "test";
            DeleteReport(Convert.ToInt32(e.CommandArgument));
            FillReportGridView();
        }
    }
    private void DeleteReport(Int32 ReportID)
    {
        SqlConnection objConnection = new SqlConnection("Data Source=GHANSHYAM;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        try
        {
            objConnection.Open();
            SqlCommand objCommand = new SqlCommand();
            objCommand.Connection = objConnection;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "PR_Report_DeleteByPK";
            objCommand.Parameters.AddWithValue("@ReportID", ReportID);
            objCommand.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            objConnection.Close();
        }
    }

    private void FillRequestGridView()
    {
        SqlConnection objConnection = new SqlConnection("Data Source=GHANSHYAM;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConnection.Open();
        SqlCommand objCmd = new SqlCommand();
        objCmd.Connection = objConnection;
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_Request_SelectAll";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        gvReport.DataSource = objSDR;
        gvReport.DataBind();
        objConnection.Close();
    }
    protected void gvRequest_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteRequest")
        {
            //lblMsg.Text = "test";
            DeleteRequest(Convert.ToInt32(e.CommandArgument));
            FillRequestGridView();
        }
    }
    private void DeleteRequest(Int32 RequestID)
    {
        SqlConnection objConnection = new SqlConnection("Data Source=GHANSHYAM; Initial Catalog=Dustbin-Locator; Integrated Security=SSPI");
        try
        {
            objConnection.Open();
            SqlCommand objCommand = new SqlCommand();
            objCommand.Connection = objConnection;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "PR_Request_DeleteByPK";
            objCommand.Parameters.AddWithValue("@RequestID", RequestID);
            objCommand.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            objConnection.Close();
        }
    }*/
    private void FillTestGridView()
    {
        SqlConnection objConnection = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConnection.Open();
        SqlCommand objCmd = new SqlCommand();
        objCmd.Connection = objConnection;
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_Report_SelectAll";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        //gvTest.DataSource = objSDR;
        //gvTest.DataBind();
        objConnection.Close();
    }
    private void FillRequestGridView()
    {
        SqlConnection objConnection = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        objConnection.Open();
        SqlCommand objCmd = new SqlCommand();
        objCmd.Connection = objConnection;
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_Request_SelectAll";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        //gvTest.DataSource = objSDR;
        //gvTest.DataBind();
        objConnection.Close();
    }
}