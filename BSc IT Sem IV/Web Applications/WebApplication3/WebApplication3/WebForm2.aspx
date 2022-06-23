<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 256px">
            <h2> Calcuator</h2>
            <asp:Label ID="Label1" runat="server" Text="Firstnumber" AssociatedControlID="num1"></asp:Label>
            <asp:TextBox ID="num1" runat="server" BorderColor="#FF3399" ></asp:TextBox>
            <br />

     
            <asp:Label ID="Label2" runat="server" Text="Secondnumber" AssociatedControlID="num2"></asp:Label>

     
            <asp:TextBox ID="num2" runat="server"></asp:TextBox>
            <br />
     
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" style="height: 26px" />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <p id="showresult" runat="server">&nbsp;</p>
        </div>
        
       
        
    </form>
</body>
</html>
