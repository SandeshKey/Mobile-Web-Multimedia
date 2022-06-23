<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="HomePage.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1>User Details</h1>
  </div>
</div>
    <div class="container">
  <div class="row">
    <div class="col-md-12">
     <div class="form-group">
    <asp:Label id="lblName"  runat="server">Name</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtname" placeholder="Jem" required/>
    </div>
     
    <div class="form-group">
    <asp:label idr="lblEmail" runat="server">Email</asp:label>
    <asp:TextBox runat="server" type="email" class="form-control" id="txtemail" placeholder="Jem@email.com" aria-describedby="emailHelp"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

  </div>
  
  <div class="form-group">
    <asp:Label id="lblAddress" runat="server">Address </asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtaddress" placeholder="1234 Main St" required/>
  </div>
  <div class="form-group">
    <asp:Label id="lblUsername" runat="server">Username</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtusername" placeholder="example123" required/>
  </div>
  
        <div class="form-group">
    <asp:Label id="Label4" runat="server">UPDATE PASSWORD</asp:Label>
  </div>
  <div class="form-group">
    <asp:Label id="Label1" runat="server"> Old Password</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtpw" placeholder="Enter old password" required/>
  </div>
   <div class="form-group">
    <asp:Label id="Label2" runat="server"> New Password</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="newpass" placeholder="Enter new password" required/>
  </div>

   <div class="form-group">
    <asp:Label id="Label3" runat="server"> Re-enter new Password</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="againpass" placeholder="Re-enter new password" required/>
  </div>
        <div class="form-group">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not matched" ControlToCompare="againpass" ControlToValidate="newpass" EnableClientScript="False" ForeColor="#CC0000" ></asp:CompareValidator>
        </div>
 
<hr class="mb-4">
  <asp:Button id="Update"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Update" ></asp:Button><br />
  
    </div>
  </div>
  </div>
</asp:Content>
