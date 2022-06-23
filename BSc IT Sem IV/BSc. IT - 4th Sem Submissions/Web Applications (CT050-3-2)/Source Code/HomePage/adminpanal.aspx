<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="adminpanal.aspx.cs" Inherits="HomePage.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1>Registration Form</h1>
  </div>
</div>
    <div class="container">
  <div class="row">
    <div class="col-md-12">
     <div class="form-group">
    <asp:Label id="lblName"  runat="server">Name</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtaname" placeholder="Jem" required/>
    </div>
     
    <div class="form-group">
    <asp:label idr="lblEmail" runat="server">Email</asp:label>
    <asp:TextBox runat="server" type="email" class="form-control" id="txtaemail" placeholder="Jem@email.com" aria-describedby="emailHelp"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

  </div>
  
  <div class="form-group">
    <asp:Label id="lblAddress" runat="server">Address </asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtaaddress" placeholder="1234 Main St" required/>
  </div>
  <div class="form-group">
    <asp:Label id="lblUsername" runat="server">Username</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtausername" placeholder="example123" required/>
  </div>
  <div class="form-group">
    <asp:Label id="lblPassword" runat="server">Password</asp:Label>
    <asp:TextBox runat="server" type="password" class="form-control" id="txtapw" placeholder="example123" required/>
  </div>
          <div class="form-group">
               <asp:Label id="Labimg" runat="server">Upload Image Here</asp:Label>
              <asp:FileUpload ID="auserimg" runat="server" />
    </div>
         <div class="form-group">
  </div>
  <input type="checkbox" id="agree" name="agree" value="agree" required>
  <asp:Label for="checkbox" runat="server"> I agree to the terms and conditions</asp:Label><br>
<hr class="mb-4">
  <asp:Button id="Register"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Register" OnClick="Register_Click"></asp:Button><br />
  <div class="container signin">
    <p style="text-align: center; font-size:25px">Already have an account? <a href="AdminLogin.aspx">Sign in</a></p>
  </div>
    </div>
  </div>
  </div>
</asp:Content>
