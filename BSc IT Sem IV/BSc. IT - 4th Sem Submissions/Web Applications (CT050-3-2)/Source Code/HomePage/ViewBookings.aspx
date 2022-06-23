<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="ViewBookings.aspx.cs" Inherits="HomePage.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1> Enroll Details</h1>
  </div>
</div>
    <div class="container" style=" position:relative; margin-left:-50px;">
  <div class="row">
    <div class="col-md-12">
     <div class="form-group">
         <asp:Label ID="lblmessage" runat="server"></asp:Label>
     <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False"  DataKeyNames="ID"
                ShowHeaderWhenEmpty="True"  OnRowEditing="grdCustomer_RowEditing"    style=" text-align: center" Width="1249px" CellPadding="4" ForeColor="#333333" GridLines="None"   >
               
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True"/>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Username" HeaderText="Username"/>
                    <asp:BoundField DataField="Course_Name" HeaderText="Course_Name"/>                  
                    <asp:CommandField ButtonType="Button" HeaderText="Action" EditText="Approve" ShowEditButton="True" />
                    
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
    </div>
  </div>
        </div>
  </div>
</asp:Content>
