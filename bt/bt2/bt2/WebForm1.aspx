<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bt2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
       
    </style>
     <link href="StyleSheet1.css" rel="StyleSheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="2" class="a1">GuestBook</td>
            </tr>
            <tr>
                <td>Tiêu đề</td>
                <td><asp:TextBox TextMode="SingleLine" runat="server" ID="txtTieuDe"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Họ tên</td>
                <td><asp:TextBox TextMode="SingleLine" runat="server" ID="txtHoTen"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><asp:TextBox TextMode="SingleLine" runat="server" ID="txtEmail"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nội dung</td>
                <td><asp:TextBox TextMode="MultiLine" Rows="6" runat="server" ID="txtNoidung" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td><asp:Button ID="Btn_GoiND" runat="server" Text="Gửi nội dung" OnClick="Btn_GoiND_Click" /></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">DANH SÁCH COMMENT</td>
            </tr>
            <tr>
                <td><span runat="server" id="EntryComment"></span></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
