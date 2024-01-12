<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageFlow.aspx.cs" Inherits="WebApplication1.PageFlow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblInfo" runat="server" EnableViewState ="false"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Click Here!"/>
        </div>
    </form>
</body>
</html>
