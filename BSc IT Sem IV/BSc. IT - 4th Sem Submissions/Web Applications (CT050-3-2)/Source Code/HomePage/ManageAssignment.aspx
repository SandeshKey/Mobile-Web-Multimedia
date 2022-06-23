<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="ManageAssignment.aspx.cs" Inherits="HomePage.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
  <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1> User Details</h1>
  </div>
</div>
    <div class="container" style=" position:relative; margin-left:-50px">
  <div class="row">
    <div class="col-md-12">
     <div class="form-group">
         <asp:Label ID="lblmessage" runat="server"></asp:Label>
     <asp:GridView ID="grdAssignment" runat="server" AutoGenerateColumns="False"  DataKeyNames="ID"
                ShowHeaderWhenEmpty="True"
                 OnRowEditing ="gridview1_RowEditing" OnRowCancelingEdit="gridview1_RowCancelingEdit"
                OnRowUpdating="gridview1_RowUpdating" OnRowDeleting="gridview1_RowDeleting"

                BackColor="White"    style=" text-align: center" Height="283px" Width="1297px"  >
               
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtID" Text='<%# Eval("ID") %>' runat="server" ReadOnly="true" Width="10px" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Subject_Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Course_Name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSName" Text='<%# Eval("Course_Name") %>' runat="server" />
                        </EditItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hand Out">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Hand_Out") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdate" Text='<%# Eval("Hand_Out") %>' runat="server" />
                        </EditItemTemplate>
                       
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="File">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Filename") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFile" Text='<%# Eval("Filename") %>' runat="server" />
                        </EditItemTemplate>
                       
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
                    </asp:TemplateField>
                    

                </Columns>
            </asp:GridView>
    </div>
  </div>
        </div>
  </div>

</asp:Content>
