<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="Enroll.aspx.cs" Inherits="HomePage.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

     <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1>Enroll Now</h1>
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
    <asp:label idr="lblEmail" runat="server">Username</asp:label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtusname" placeholder="Jem@email.com" aria-describedby="emailHelp" ReadOnly="True"/>
  </div>
  <div class="form-group">
    <asp:Label id="lblAddress" runat="server">Course Name </asp:Label>
      <asp:DropDownList ID="choosecourse" runat="server" Height="27px" Width="212px" OnSelectedIndexChanged="choosecourse_SelectedIndexChanged">
      </asp:DropDownList>
  </div>
          <%--<div class="col-50">--%>
              <div class="form-group">
               <asp:Label id="Label4" runat="server">Payment </asp:Label>
                  </div>
                  <label for="Cname">Accepted Cards</label>
                  <div class="icon-container">
                    <i class="fab fa-cc-visa" style="color:navy; font-size:35px;"></i>
                    <i class="fab fa-cc-mastercard"style="color:orange;font-size:35px;"></i>
                    <i class="fab fa-cc-paypal"style="color:blue;font-size:35px"></i>
                  </div>
              </div>
         <br />
  <div class="form-group">
    <asp:Label id="lblUsername" runat="server">Card Holder Name</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtchldr" placeholder="John Doe" required/>
  </div>
  <div class="form-group">
    <asp:Label id="lblPassword" runat="server">Card Number</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtcnum" placeholder="111-222-333" required/>
  </div>
      <div class="form-group">
    <asp:Label id="Label2" runat="server">Exp Year</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtexpy" placeholder="2020" required/>
  </div>    
  <div class="form-group">
    <asp:Label id="Label1" runat="server">Exp Month</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtexpm" placeholder="Jan" required/>
  </div>
       <div class="form-group">
    <asp:Label id="Label3" runat="server">CVV</asp:Label>
    <asp:TextBox runat="server" type="text" class="form-control" id="txtcvv" placeholder="1234555556" required/>
  </div>
<hr class="mb-4">
  <asp:Button id="EnrollBtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="Enroll" OnClick="EnrollBtn_Click"></asp:Button><br />
  <div class="container signin">

  </div>
  
    </div>
  </div>
  </div>
</asp:Content>
