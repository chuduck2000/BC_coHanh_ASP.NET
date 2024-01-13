<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebBanSach.Views.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row mt-5 mb-4">
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col">
                <form id="form1" runat="server">
                    <div style="text-align: center">
                        <img src="../Assets/Image/Store.jpg" style="width: 200px; height: 157px;" />
                    </div>

                    <h4 style="text-align: center">ĐĂNG KÝ</h4>
                    <asp:Label runat="server" ID="Thongbao" class="text-danger text-center "></asp:Label>
                    <div class="mt-3">
                        <input type="text" placeholder="Nhập Họ và Tên" autocomplete="off" runat="server" class="form-control" id="Text1" />
                    </div>
                    <div class="mt-3">
                        <input type="text" placeholder="Tên đăng nhập" autocomplete="off" runat="server" class="form-control" id="UnameTb" />
                    </div>
                    <div class="mt-3">
                        <input type="password" placeholder="Password" autocomplete="off" runat="server" class="form-control" id="PasswordTb" />
                    </div>
                    <div class="mt-3">
                        <input type="password" placeholder="Nhập lại Password" autocomplete="off" runat="server" class="form-control" id="Password1" />
                    </div>
                    <div class="mt-3 d-grid">
                        <%--<asp:Button Text="Đăng ký" runat="server" class="btn-danger btn" ID="SignUpBtn" OnClick="SignUpBtn_Click" />--%>
                    </div>
                </form>
            </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>
</body>
</html>
