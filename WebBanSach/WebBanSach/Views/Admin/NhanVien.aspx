<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="NhanVien.aspx.cs" Inherits="WebBanSach.Views.Admin.NhanVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">Quản lý Nhân viên
                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-success">Mã Nhân viên:</label>
                    <input type="number" placeholder="Nhập mã Nhân viên " autocomplete="off" runat="server" id="manvTb" class="form-control" />
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Họ tên Nhân viên:</label>
                    <input type="text" placeholder="Nhập họ và tên Nhân viên " autocomplete="off" runat="server" id="tennvTb" class="form-control" />
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Tài khoản Nhân viên:</label>
                    <input type="text" placeholder="Nhập tài khoản " autocomplete="off" runat="server" id="tknvTb" class="form-control" />
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Mật khẩu:</label>
                    <input type="text" placeholder="Nhập Mật khẩu " autocomplete="off" runat="server" id="mknvTb" class="form-control" />
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
                        <asp:Button Text="Xóa" runat="server" ID="DeleteBtn" class="btn-danger btn" />
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="dsNhanVien" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="Both" OnSelectedIndexChanged="dsNhanVien_SelectedIndexChanged1">
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
