<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="WebBanSach.Views.Admin.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div class="col">
            <h3 class="text-center">Quản lý Khách hàng
            </h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <%--<div class="mb-3">
                <label for="" class="form-label text-success">Mã Khách hàng:</label>
                <input type="number" placeholder="Nhập mã Khách hàng " autocomplete="off" runat="server" id="makhTb" class="form-control" />
            </div>--%>
            <div class="mb-3">
                <label for="" class="form-label text-success">Họ tên Khách hàng:</label>
                <input type="text" placeholder="Nhập họ và tên Khách hàng " autocomplete="off" runat="server" id="tenkhTb" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="" class="form-label text-success">Tài khoản Khách hàng:</label>
                <input type="text" placeholder="Nhập tài khoản " autocomplete="off" runat="server" id="tkkhTb" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="" class="form-label text-success">Mật khẩu:</label>
                <input type="text" placeholder="Nhập Mật khẩu " autocomplete="off" runat="server" id="mkkhTb" class="form-control" />
            </div>
            <div class="row">
                <asp:Label runat="server" ID="Thongbao" class="text-danger text-center "></asp:Label>
                <div class="col d-grid">
                    <asp:Button Text="Thêm" runat="server" ID="SaveBtn" class="btn-warning btn" OnClick="SaveBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Sửa" runat="server" ID="EditBtn" class="btn-success btn" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Xóa" runat="server" ID="DeleteBtn" class="btn-danger btn" OnClick="DeleteBtn_Click" />
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <asp:GridView ID="dsKhachHang" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="Both"  AutoGenerateSelectButton="True" OnSelectedIndexChanged="dsKhachHang_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="true" ForeColor="White" />
                <HeaderStyle BackColor="teal" Font-Bold="false" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="true" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </div>
</div>
</asp:Content>
