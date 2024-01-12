<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebBanSach.Views.Login" %>

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
                        <img src="../Assets/Image/bookstore.png" width="200" height="150" />
                    </div>

                    <h4 style="text-align: center">ĐĂNG NHẬP</h4>
                    <div class="mt-3">
                        <input type="text" placeholder="Tên đăng nhập" autocomplete="off" class="form-control" />
                    </div>
                    <div class="mt-3">
                        <input type="password" placeholder="Password" autocomplete="off" class="form-control" />
                    </div>
                    <div class="mt-3 d-grid">
                        <asp:Button Text="Đăng nhập" runat="server" class="btn-danger btn" />
                    </div>
                </form>
            </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>


</body>
</html>
