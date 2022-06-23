<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HomePage.WebForm4" %>
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
                <asp:Label id="lblPassword" runat="server">Password</asp:Label>
                <asp:TextBox runat="server" type="password" class="form-control" id="txtpw" placeholder="example123" required/>
              </div>
                         <hr class="mb-4">
              <asp:Button id="LogBtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Login" OnClick="LogBtn_Click"></asp:Button><br />

          <div class="container signin">
                <p style="text-align: center; font-size:20px">Forgot Password <a href="passwordupdate.aspx"> Update Password</a>.</p>
              </div>

              <div class="container signin">
                <p style="text-align: center; font-size:20px">Don't have an account? <a href="Register.aspx"> Register</a>.</p>
              </div>
              
        </div>
      </div>
      </div>
</asp:Content>
