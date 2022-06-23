<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="addcontent.aspx.cs" Inherits="HomePage.addcontent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="46px" Width="176px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>

    </asp:DropDownList>
</asp:Content>
