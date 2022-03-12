<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Map.Master" AutoEventWireup="true" CodeFile="LocationAdd.aspx.cs" Inherits="Admin_Panel_Location_LocationAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
     <div class="container" style="padding-top:10px;">
        <div class="row">
            <div class="col-md-12"><br /><br /><br />
                <h1>New Location ADD Here!!</h1>
                
               <br />
                <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>
            </div>
         
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-lable">Longitude</label>
            <div class="col-sm-4">
                <asp:TextBox runat="server" ID="txtLogitude" CssClass="form-control" placeholder="Enter Longitude "></asp:TextBox>
                
            </div> 
        </div>

         <div class="form-group row">
             <label class="col-sm-2 col-form-lable">Latitude</label>
             <div class="col-sm-4">
                 <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Enter Latitude"></asp:TextBox>
                
             </div>
         </div> 
         <div class="form-group row">
            <div class="col-sm-4"></div>
            <div class="col-sm-2">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary pull-right" OnClick="btnSave_Click"/>&nbsp;
                <asp:HyperLink ID="hlCancel" runat="server" Text="Cancel" NavigateUrl="~/Admin_Panel/Location/Location.aspx" CssClass="btn btn-danger" ></asp:HyperLink>
             </div>
        </div>  
    </div>
    
</asp:Content>

