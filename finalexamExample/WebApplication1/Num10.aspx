<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Num10.aspx.cs" Inherits="WebApplication1.Num10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
