<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Map.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Panel_Access_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">  
  <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" >
    <title></title>
     <link href="~/Content/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/Content/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="~/content/js/bootstrap.min.js" ></script>
</head>
<body>
    <form id="form1">
    <div class="container" style="padding-top: 50px;">
        <div class="row">
            <div class="col-md-12"><h1>
                Only Waste Management Admin Login Here!!
                </h1>
                <br />
                <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label for="txtUserName" class="col-sm-2 col-form-lable">User Name</label>
            <div class="col-sm-4">
                <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" placeholder="Enter User Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> 
        </div>
        <div class="form-group row">
            <label for="txtPassword" class="col-sm-2 col-form-lable">Password</label>
            <div class="col-sm-4">
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> 
        </div>
        <div class="form-group row">
            
            <div class="col-sm-4">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary pull-right" OnClick="btnLogin_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hlCancel" runat="server" Text="Cancel" NavigateUrl="~/Default.aspx" CssClass="btn btn-danger" ></asp:HyperLink>
             </div>
        </div>    
    </div>
    </form>
</body>
</html>
</asp:Content>

