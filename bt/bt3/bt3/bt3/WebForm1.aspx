<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bt3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table>
            <tr>
                <td colspan="3" class="dangkyphong">ĐĂNG KÝ PHÒNG</td>
            </tr>
            <tr>
                <td>Họ tên</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox></td>
                <td class="chu">
                    <asp:RequiredFieldValidator ControlToValidate="txtHoTen" ID="rfvHoTen1" runat="server" ErrorMessage="Nhập họ tên"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td>Cơ quan</td>
                <td><asp:TextBox ID="txtCoQuan" runat="server"></asp:TextBox></td>
                <td class="chu">
                    <asp:RequiredFieldValidator ControlToValidate="txtCoQuan" ID="rfvCoQuan1" runat="server" ErrorMessage="Nhập cơ quan"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                <td class="chu">
                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" ID="rfvEmail" runat="server" ErrorMessage="Nhập địa chỉ email<br>"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationExpression=".*@.{2,}\..{2,}" Display="Dynamic" ControlToValidate="txtEmail" ID="revEmail" runat="server" ErrorMessage="Nhập địa chỉ email không hợp lệ"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td><asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox></td>
                <td class="chu">
                    <asp:RequiredFieldValidator ControlToValidate="txtMatKhau" ID="rfvMatKhau" runat="server" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Nhập lại mật khẩu</td>
                <td><asp:TextBox ID="txtNLMatKhau" runat="server" TextMode="Password"></asp:TextBox></td>
                <td class="chu">
                    <asp:RequiredFieldValidator ControlToValidate="txtNLMatKhau" ID="rfvNLMatKhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2<br>"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ControlToCompare="txtMatKhau" ControlToValidate="txtNLMatKhau" ID="cmvMatKhau" runat="server" ErrorMessage="Mật khẩu không khớp"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Ngày check in</td>
                <td><asp:TextBox ID="txtCheckin" runat="server"></asp:TextBox></td>
                <td class="chu">
                    <asp:RequiredFieldValidator ControlToValidate="txtCheckin" ID="rfvCheckin" runat="server" ErrorMessage="Nhập ngày checkin<br>"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ControlToValidate="txtCheckin" ID="cmvCheckin" Operator="DataTypeCheck" Type="Date" runat="server" ErrorMessage="Nhập ngày checkin không hợp lệ"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Số ngày ở</td>
                <td><asp:TextBox ID="txtSoNgay" runat="server"></asp:TextBox></td>
                <td class="chu">
                    <asp:RequiredFieldValidator ControlToValidate="txtSoNgay" ID="rfvSoNgay" runat="server" ErrorMessage="Nhập số ngày<br>"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ControlToValidate="txtSoNgay" Operator="DataTypeCheck" Type="Integer" ID="cmvSoNgay" runat="server" ErrorMessage="Nhập số ngày"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Loại phòng</td>
                <td>
                    <asp:DropDownList ID="ddlLoaiPhong" runat="server">
                        <asp:ListItem>Phòng đơn</asp:ListItem>
                        <asp:ListItem>Phòng đôi</asp:ListItem>
                        <asp:ListItem>Phòng VIP đơn</asp:ListItem>
                        <asp:ListItem>Phòng VIP đôi</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td class="dangky" colspan="3">
                    <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" /></td>
            </tr>
            <tr>
                <td colspan="3" class="dangky">
                    <asp:Label ID="lblThongBao" runat="server" Text="Thông báo"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3" class="dangky chu">
                    <asp:ValidationSummary ID="vsTomTatLoi" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
