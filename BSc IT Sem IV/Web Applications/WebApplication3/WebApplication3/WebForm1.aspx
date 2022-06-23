<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> First Web Application </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong> A Simple ASP.NET Example!!!</strong>
            <%
                Response.Write("</br>");
                Response.Write("ASP.NET programming is fun!!!");
                Response.Write("</br>");
                Response.Write("This page was loaded at:");
                Response.Write("</br>");
                Response.Write("This is a page for test");

            %>
        </div>

        <asp:Label ID="Label1" runat="server" AssociatedControlID="TextBox1" Text="Firstname"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
        <asp:Button ID="Button1" runat="server" Text="Button" Height="25px" OnClick="Button1_Click" />
        </p>

    </form>
</body>
</html>
