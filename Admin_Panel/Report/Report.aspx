<%@ Page Title="Report" Language="C#" MasterPageFile="~/Content/Map.Master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Panel_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <br />
    <br />
    <div class="container" style="padding-top: 10px;">
        <div class="row">
            <div class="col-md-12">
                <h1>Report</h1>
                <div class="form-group row">
                    <label for="txtName" class="col-sm-2 col-form-lable">Full Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Enter Your Fullname"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="txtEmail" class="col-sm-2 col-form-lable">Email</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" CssClass="form-control" placeholder="Enter Your Email"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10">
                        <asp:FileUpload runat="server" ID="fuImage"></asp:FileUpload>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="txtComment" class="col-sm-2 col-form-lable">Comment</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtComment" CssClass="form-control" placeholder="Enter Your Any Comment"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-lable">Region</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlRegion" runat="server" CssClass="form-control" AutoPostBack="true"
                            onselectedindexchanged="Page_Load" ToolTip="Select your region">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-4">
                        <iframe id="urIframe" runat="server"></iframe>
                    </div>
                    <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnReport" Text="Report" OnClick="btnReport_Click" /><br />
                        <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

