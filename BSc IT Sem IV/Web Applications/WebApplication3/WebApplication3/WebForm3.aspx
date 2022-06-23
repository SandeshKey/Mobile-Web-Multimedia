<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication3.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 266px">
            <h1>Temperature Convert</h1>

            <asp:Label ID="Label1" runat="server" Text="°F"></asp:Label>
            <asp:TextBox ID="df" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" style="margin-left: 227px" Text="Convert" Width="61px" OnClick="Button1_Click" />
            <asp:TextBox ID="dcc" runat="server" style="margin-left: 232px"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="°C"></asp:Label>

            </br>
            </br>

            <asp:Label ID="Label4" runat="server" Text="°C"></asp:Label>
            <asp:TextBox ID="dc" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 224px" Text="Convert" Width="63px" />
            <asp:TextBox ID="dfc" runat="server" style="margin-left: 232px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="°F"></asp:Label>

            </div>
        
    </form>
</body>
</html>
