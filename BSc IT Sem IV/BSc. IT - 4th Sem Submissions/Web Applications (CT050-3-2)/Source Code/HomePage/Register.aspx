<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HomePage.WebForm2" %>
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
    <asp:TextBox runat="server" type="text" class="form-control" id="txtname" placeholder="Jem" required/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is mandatory!!" ControlToValidate="txtname" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
    </div>
     
    <div class="form-group">
    <asp:label idr="lblEmail" runat="server">Email</asp:label>
    <asp:TextBox runat="server" type="email" class="form-control" id="txtemail" placeholder="Jem@email.com" aria-describedby="emailHelp"/>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="must enter in example@gmail.com pattern]" ControlToValidate="txtemail" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

  </div>
  
  <div class="form-group">
    <asp:Label id="lblAddress" runat="server">Address </asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtaddress" placeholder="1234 Main St" required/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is mandatory!!" ControlToValidate="txtaddress" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <asp:Label id="lblUsername" runat="server">Username</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtusername" placeholder="example123" required/>
      
  </div>
  <div class="form-group">
    <asp:Label id="lblPassword" runat="server">Password</asp:Label>
    <asp:TextBox runat="server" type="password" class="form-control" id="txtpw" placeholder="example123" required/>
     
  </div>
          <div class="form-group">
               <asp:Label id="Labimg" runat="server">Upload Image Here</asp:Label>
              <asp:FileUpload ID="userimg" runat="server" />
    </div>
         <div class="form-group">
  </div>
  <input type="checkbox" id="agree" name="agree" value="agree" required>
  <asp:Label for="checkbox" runat="server"> I agree to the terms and conditions</asp:Label><br>
<hr class="mb-4">
  <asp:Button id="RrgBtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Register" OnClick="RrgBtn_Click"></asp:Button><br />
  <div class="container signin">
    <p style="text-align: center; font-size:25px">Already have an account? <a href="Login.aspx">Sign in</a>.</p>
  </div>
    </div>
  </div>
  </div>
</asp:Content>
