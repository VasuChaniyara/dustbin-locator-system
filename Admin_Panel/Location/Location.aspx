<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Map.Master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Admin_Panel_Location_Location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">

    <div class="container" style="padding-top:10px;">
        <div class="row">
            <div class="col-md-12"><br /><br /><br />
                <h1>Location List</h1>
                
               <br />
            </div>
            <asp:HyperLink ID="hlLocationADD" runat="server" Text="Add New Location" NavigateUrl="~/Admin_Panel/Location/LocationAdd.aspx" CssClass="btn btn-primary"></asp:HyperLink>
        </div>
        <div class="row">
            <div class="col-md-12">
                 <asp:Label runat="server" ID="Label" EnableViewState="false" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <h3 style="text-align:center"><i>Display List Of Location For Dustbin</i></h3><br />
                <asp:GridView ID="gvLocation" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover" OnRowCommand="gvLocation_RowCommand" >
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" CommandName="DeleteRecord" CommandArgument='<%# Eval("LocationID") %>' ><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;DELETE</asp:LinkButton>&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="LocationID" HeaderText="ID" />
                        <asp:BoundField DataField="GEOMETRY" HeaderText="Point" />
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
                <br />
                <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
            </div>
        </div>
       
    </div>
</asp:Content>

