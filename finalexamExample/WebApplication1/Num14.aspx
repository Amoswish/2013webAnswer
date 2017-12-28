<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Num14.aspx.cs" Inherits="WebApplication1.Num14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名：<asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="必须填写" ForeColor="Red" Visible="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;重复密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="CompareValidator" ForeColor="Red" Visible="True" SetFocusOnError="True">再次密码不匹配</asp:CompareValidator>
            <br />
            年龄：<asp:TextBox ID="TextBox4" runat="server" CausesValidation="True"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" MaximumValue="60" MinimumValue="10" ControlToValidate="TextBox4" ForeColor="Red" Visible="True" CultureInvariantValues="True" EnableTheming="True" SetFocusOnError="True">年龄必须是10~60</asp:RangeValidator>
            <br />
            Email:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="请输入合法的Email地址" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>

            <br />
            <asp:Button ID="Button1" runat="server" OnCommand="Button1_Command" Text="Button" />

        </div>
    </form>
</body>
</html>
