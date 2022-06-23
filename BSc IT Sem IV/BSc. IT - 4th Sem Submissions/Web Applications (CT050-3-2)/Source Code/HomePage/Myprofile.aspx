<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="Myprofile.aspx.cs" Inherits="HomePage.Myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--card-->
      <link href="css/bootstrap.min.css" rel="stylesheet">
    <h2 style="text-align:center">User Profile Card</h2>
<div class="card">
     <asp:ListView ID="ListView1" runat="server">
      <ItemTemplate>
                <asp:Image ID="userimg"  runat="server" ImageUrl='<%#"~/img/"+Eval("User_Image") %>' style="width:100%"></asp:Image>
      </ItemTemplate>
     </asp:ListView>
  
  <h1>
      <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h1>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
</div>
    <!--card end-->

 
    <div class="container">
  <div class="row">
    <div class="col-md-12">
     <div class="form-group">
    <asp:Label id="lblName"  runat="server">Name</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="name" placeholder="Jem" required/>
    </div>
     
    <div class="form-group">
    <asp:label idr="lblEmail" runat="server">Email</asp:label>
    <asp:TextBox runat="server" type="email" class="form-control" id="email" placeholder="Jem@email.com" aria-describedby="emailHelp"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

  </div>
  
  <div class="form-group">
    <asp:Label id="lblAddress" runat="server">Address </asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="address" placeholder="1234 Main St" required/>
  </div>
  <div class="form-group">
    <asp:Label id="lblUsername" runat="server">Username</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="username" placeholder="example123" required Enabled="False"/>
  </div>
  <div class="form-group">
    <asp:Label id="Label1" runat="server"> Password</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtpw" placeholder="Enter old password" required/>
  </div>
 
<hr class="mb-4">
  <asp:Button id="editbtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Edit" OnClick="editbtn_Click"></asp:Button><br />
<div class="container signin">
                <p style="text-align: center; font-size:20px">Forgot Password <a href="passwordupdate.aspx"> Update Password</a>.</p>
              </div>
    </div>
  </div>
  </div>
</asp:Content>
