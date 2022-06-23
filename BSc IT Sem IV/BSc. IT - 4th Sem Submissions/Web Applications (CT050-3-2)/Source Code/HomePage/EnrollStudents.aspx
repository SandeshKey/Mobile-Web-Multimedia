<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="EnrollStudents.aspx.cs" Inherits="HomePage.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1> Student Details</h1>
  </div>
</div>
    <div class="container" style=" position:relative; margin-left:-50px;">
  <div class="row">
    <div class="col-md-12">
     <div class="form-group">
      
         <asp:Label ID="lblmessage" runat="server"></asp:Label>
         
     <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="ID"
                ShowHeaderWhenEmpty="True"


                OnRowCommand="gridview1_RowCommand" OnRowEditing="gridview1_RowEditing" OnRowCancelingEdit="gridview1_RowCancelingEdit"
                OnRowUpdating="gridview1_RowUpdating" OnRowDeleting="gridview1_RowDeleting"

                BackColor="White"    style=" text-align: center" Width="1249px" >
               
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtID" Text='<%# Eval("ID") %>' runat="server" ReadOnly="true" Width="10px" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" Text='<%# Eval("Name") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt1" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" Text='<%# Eval("Email") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt2" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                  
                     <asp:TemplateField HeaderText="Username">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Username") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUsername" Text='<%# Eval("Username") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt3" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Course Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Course_Name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCName" Text='<%# Eval("Course_Name") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt4" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/img/Update.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/img/Delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/img/Save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/img/Cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/img/Add.png" runat="server" CommandName="Add" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                    

                </Columns>
            </asp:GridView>
             
    </div>
  </div>
        </div>
  </div>
</asp:Content>
