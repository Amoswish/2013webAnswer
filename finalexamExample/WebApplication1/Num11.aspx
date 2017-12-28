<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Num11.aspx.cs" Inherits="WebApplication1.Num11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandArgument='<%# Eval("ProductID") %>' OnCommand="LinkButton1_Command" Text="查看" OnClientClick="verfy()"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice] FROM [Alphabetical list of products]"></asp:SqlDataSource>
        </div>
    </form>
</body>
  <script type="text/javascript">
      function verfy(event) {
        event.preventDefault()
      var a = confirm("是否要查看当前记录？")
      if(a == true){
        return true;
      }
      else {
        return false;
      }
    }
  </script>
</html>
