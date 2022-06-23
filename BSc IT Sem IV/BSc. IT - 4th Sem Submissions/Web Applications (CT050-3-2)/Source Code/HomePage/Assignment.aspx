<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="HomePage.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1>Assignment</h1>
  </div>
</div>
    <div class="container">
  <div class="row">
    <div class="col-md-12">
        <asp:Label ID="lblmessage" runat="server"></asp:Label>
     <div class="form-group">
    <asp:Label id="lblName"  runat="server">Subject Name</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtname"  required/>
    </div>
     
    <div class="form-group">
    <asp:label idr="lblEmail" runat="server">Hand Out Date</asp:label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtdate" />   
  </div>
  <div class="form-group">
    <asp:Label id="lblAddress" runat="server">File </asp:Label>
      <asp:FileUpload ID="FileUpload1" runat="server" />
  </div> 
  <asp:Button id="Upload"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Upload" OnClick="Upload_Click"></asp:Button><br />
    </div>
  </div>
  </div>
</asp:Content>
