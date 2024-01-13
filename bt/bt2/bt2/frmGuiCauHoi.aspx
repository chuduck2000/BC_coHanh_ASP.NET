<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmGuiCauHoi.aspx.cs" Inherits="bt2.frmGuiCauHoi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet2.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td class="tieude">HÃY GỬI CÂU HỎI ĐỂ MỌI NGƯỜI TRẢ LỜI GIÚP BẠN</td>
            </tr>
            <tr>
                <td>Tiêu đề câu hỏi(*)</td>
            </tr>
            <tr>
                <td colspan="2"><asp:TextBox ID="txtCauhoi" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Tên liên hệ(*)</td>
                <td>Email(*)</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="txtLienhe" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Chi tiết câu hỏi(Yêu cầu gõ tiếng Việt có dấu):</td>
            </tr>
            <tr>
                <td><asp:TextBox TextMode="MultiLine" ID="txtChitiet" runat="server"></asp:TextBox></td>
            </tr>
            <tr>                
                <td colspan="2">Phân loại chuyên mục (*)<br />
                <asp:DropDownList ID="ddlChuyenmuc" runat="server">
                    <asp:ListItem>--Chọn chuyên mục--</asp:ListItem>
                    <asp:ListItem>Nội thất</asp:ListItem>
                    <asp:ListItem>Ngoại thất</asp:ListItem>
                    <asp:ListItem>Phong thủy</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Khu vực bạn quan tâm</td>
            </tr>
            <tr>
                <td>Tỉnh / Thành phố</td>
                <td>Quận / Huyện</td>
            </tr>
            <tr>                
                <td>
                <asp:DropDownList ID="ddlTinhthanh" runat="server">
                    <asp:ListItem>--Chọn Tỉnh-Thành phố--</asp:ListItem>
                    <asp:ListItem>Trà Vinh</asp:ListItem>
                    <asp:ListItem>Vĩnh Long</asp:ListItem>
                    <asp:ListItem>Cần Thơ</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td>
                <asp:DropDownList ID="ddlQuanhuyen" runat="server">
                    <asp:ListItem>--Chọn Quận/Huyện--</asp:ListItem>
                    <asp:ListItem>Châu Thành</asp:ListItem>
                    <asp:ListItem>Trà Ôn</asp:ListItem>
                    <asp:ListItem>Ô Môn</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="canhgiua">
                    <asp:Button ID="btnGui" CssClass="submit" runat="server" Text="Gửi" PostBackUrl="~/frmXulyCauhoi.aspx" OnClick="btnGui_Click"/>
                    <asp:Button ID="btnHuy" CssClass="submit" runat="server" Text="Hủy" OnClick="btnHuy_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
