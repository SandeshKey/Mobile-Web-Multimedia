<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="passwordupdate.aspx.cs" Inherits="HomePage.passwordupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1>Login Form</h1>
  </div>
</div>
    <div class="container">
  <div class="row">
    <div class="col-md-12">
         
             <div class="form-group">
                <asp:Label id="lblUsername" runat="server">Username</asp:Label>
                <asp:TextBox runat="server" type="text" class="form-control" id="txtusername" placeholder="example123" required/>
              </div>
              <div class="form-group">
                <asp:Label id="lblPassword" runat="server"> Old Password</asp:Label>
                <asp:TextBox runat="server" type="password" class="form-control" id="txtpw" placeholder="example123" required/>
              </div>
             <div class="form-group">
                <asp:Label id="labnewpass" runat="server"> new Password</asp:Label>
                <asp:TextBox runat="server" type="password" class="form-control" id="newpass" placeholder="Enter New Password" required/>
              </div>

        <div class="form-group">
    <asp:Label id="Label1" runat="server">Confirm Password</asp:Label>
    <asp:TextBox runat="server" type="password" class="form-control" id="txtconfpass" placeholder="Re-enter password" required/>
  </div>
         <div class="form-group">
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does not matched !!" ControlToCompare="newpass" ControlToValidate="txtconfpass" EnableClientScript="False" ForeColor="#CC0000"></asp:CompareValidator>
              </div>
                         <hr class="mb-4">
              <asp:Button id="Update"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Update" OnClick="Update_Click"></asp:Button><br />
        </div>
      </div>
      </div>
    
</asp:Content>
