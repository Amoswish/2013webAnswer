<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Num12.aspx.cs" Inherits="WebApplication1.Num12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnInit="DropDownList1_Init" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="1">辽宁</asp:ListItem>
                <asp:ListItem Value="2">小喵喵</asp:ListItem>
                <asp:ListItem Value="3">北京</asp:ListItem>
                <asp:ListItem Value="4">陕西</asp:ListItem>
            </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
