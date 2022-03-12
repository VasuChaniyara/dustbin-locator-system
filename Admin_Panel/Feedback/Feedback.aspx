<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Map.Master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Admin_Panel_Feedback_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">

    <div class="container" style="padding-top:10px;">
        <div class="row">
            <div class="col-md-12"><br /><br /><br />
                <h1>Report List</h1>
                
               <br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
                <asp:GridView runat="server" ID="gvTest" AutoGenerateColumns="False" DataKeyNames="ReportID" DataSourceID="SqlDataSource1">
                    <Columns>
                    <asp:BoundField DataField="ReportID" HeaderText="ReportID" InsertVisible="False" ReadOnly="True" SortExpression="ReportID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="RegionID" HeaderText="RegionID" SortExpression="RegionID" />
                    <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="imgrole" runat="server" ImageUrl='<%# Eval("Photo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                    </Columns>
                   <HeaderStyle BackColor="#b6b7bc" ForeColor="Red" Font-Names="Arial" Font-Size="18px"
                        Font-Bold="true" HorizontalAlign="Center" />

             <AlternatingRowStyle BackColor="#D5E6F9" ForeColor="#284775" />

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Names="Arial" Font-Size="15px"

                HorizontalAlign="Center" />

             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

            <FooterStyle HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"

                Font-Names="Arial" Font-Size="9px" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Report]"></asp:SqlDataSource>
            </div>
        </div>
       
    </div>





  <%--  <br />
    <br />
    <div class="row">
        <div class="col-md-12">
            <asp:GridView runat="server" ID="gvTest" AutoGenerateColumns="False" DataKeyNames="ReportID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ReportID" HeaderText="ReportID" InsertVisible="False" ReadOnly="True" SortExpression="ReportID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="RegionID" HeaderText="RegionID" SortExpression="RegionID" />
                    <%--<asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />

                    <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="imgrole" runat="server" ImageUrl='<%# Eval("Photo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=GHANSHYAM;Initial Catalog=Dustbin-Locator;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Report]"></asp:SqlDataSource>
        </div>
    </div>--%>
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12"><br /><br /><br />
                <h1>Request List</h1>
                
               <br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
               
         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
                <asp:GridView runat="server" ID="gvRequest" AutoGenerateColumns="False" DataKeyNames="RequestID" DataSourceID="SqlDataSource2">
                    <Columns>
                    <asp:BoundField DataField="RequestID" HeaderText="RequestID" InsertVisible="False" ReadOnly="True" SortExpression="RequestID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="RegionID" HeaderText="RegionID" SortExpression="RegionID" />
                    <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="imgrole" runat="server" ImageUrl='<%# Eval("Photo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                    </Columns>
                   <HeaderStyle BackColor="#b6b7bc" ForeColor="Red" Font-Names="Arial" Font-Size="18px"
                        Font-Bold="true" HorizontalAlign="Center" />

             <AlternatingRowStyle BackColor="#D5E6F9" ForeColor="#284775" />

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Names="Arial" Font-Size="15px"

                HorizontalAlign="Center" />

             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

            <FooterStyle HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"

                Font-Names="Arial" Font-Size="9px" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Request]"></asp:SqlDataSource>
            </div>
        </div>
        </div>
</asp:Content>

