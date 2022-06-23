<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="userdetails.aspx.cs" Inherits="HomePage.userdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet">
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
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
   <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1> User Details</h1>
  </div>
</div>
    <div class="row">
         <div class="container-fluid">
    <div class="col-md-10">
        <div class="form-group">
         <asp:TextBox runat="server" type="text" class="form-control" id="txtsearname" placeholder=" Search  Name here" required BorderColor="Black"/>
            <hr class="mb-4">
            <asp:Button id="searchbtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="SEARCH" OnClick="searchbtn_Click" ></asp:Button>
         </div>
       </div>
      </div>
        </div>
    <asp:Panel ID="Panel1" runat="server">
        
    
                <h2 style="text-align:center">User Profile Card</h2>

                <div class="card">
                     <asp:ListView ID="ListView2" runat="server">
                      <ItemTemplate>
                                <asp:Image ID="userimg"  runat="server" ImageUrl='<%#"~/img/"+Eval("User_Image") %>' style=" max-width: 300px; max-height=100px;"  ></asp:Image>
                      </ItemTemplate>
                     </asp:ListView>
  
                  <h1>
     
                  <p class="title"><asp:Label ID="labtitle" runat="server" Text=""></asp:Label></p>
                  <p>Address: <asp:Label ID="labemail" runat="server" Text=""></asp:Label></p>
                  <p>Username: <asp:Label ID="labusername" runat="server" Text=""></asp:Label></p>
                  <p>Address: <asp:Label ID="labaddress" runat="server" Text=""></asp:Label></p>
                 

                 
                </div>
    </asp:Panel>

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetConn %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>
        <div class="col">
         <br />

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Name" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                        <div class="container-fluid">
                              <div class="row">
                                  <div class="col-lg-10">
                                     <div class="col-lg-12">
                                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("ID") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>

                                         Name:
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                         </div>
                                 
                                 <div class="row">
                                     <div class="col-lg-12">
                                         Email:
                                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>' Font-Bold="True"></asp:Label>
                                         </div>
                                 </div>
                                 <div class="row">
                                     <div class="col-lg-12">
                                           Username:<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("Username") %>'></asp:Label>
                                     </div>
                                </div>
                                       <div class="row">
                                     <div class="col-lg-12">
                                        Address<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("Address") %>'></asp:Label>
                                     </div>
                                </div>
                         
                            </div>
                             <div class="col-lg-2">
                              <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%#"~/img/"+Eval("User_Image") %>'></asp:Image>
                              </div>
                            
                            </div>
                         </div>
                     </ItemTemplate>
                 </asp:TemplateField>
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
</asp:Content>

