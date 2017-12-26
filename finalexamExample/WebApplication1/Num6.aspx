<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Num6.aspx.cs" Inherits="WebApplication1.Num6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem Selected="True" Value="1">北京</asp:ListItem>
                <asp:ListItem Value="2">上海</asp:ListItem>
                <asp:ListItem Value="3">天津</asp:ListItem>
                <asp:ListItem Value="4">重庆</asp:ListItem>
            </asp:ListBox>
            <asp:Button ID="Button1" runat="server" OnCommand="Button1_Command" Text="&gt;&gt;" />
            <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
        </div>
    </form>
</body>
</html>
