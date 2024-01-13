<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sach.aspx.cs" Inherits="WebBanSach.Views.Admin.Sach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">Quản lý sách</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-success">Tên sách</label>
                    <input type="text" placeholder="Nhập tên sách: " autocomplete="off" class="form-control" />
                </div>
                <%--<div class="mb-3">
                    <label for="" class="form-label text-success">Tác giả</label>
                    <input type="text" placeholder="Nhập tên tác giả: " autocomplete="off" class="form-control" />
                    <asp:DropDownList ID="ddl1" runat="server" class="form-control"></asp:DropDownList>
                </div>--%>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Loại sách</label>
                    <%--<input type="text" placeholder="Nhập loại sách: " autocomplete="off" class="form-control" />--%>
                    <asp:DropDownList ID="ddl2" runat="server" class="form-control"></asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Giá sách</label>
                    <input type="text" placeholder="Nhập giá sách: " autocomplete="off" class="form-control" />
                </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Số lượng</label>
                    <input type="text" placeholder="Nhập số lượng: " autocomplete="off" class="form-control" />
                </div>

                <div class="row">
                    <div class="col d-grid">
                        <asp:Button Text="Thêm" runat="server" class="btn-warning btn" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Sửa" runat="server" class="btn-success btn" /></div>
                    <div class="col d-grid">
                        <asp:Button Text="Xóa" runat="server" class="btn-danger btn" /></div>
                </div>
            </div>
            <div class="col-md-8">
            </div>
        </div>
    </div>
</asp:Content>
