<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SongManaging.aspx.cs" Inherits="bt5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ BÀI HÁT</title>
    <link rel="stylesheet" href="StyleSheet1.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="3" class="tieude">QUẢN LÝ BÀI HÁT</td>
            </tr>
            <tr>
                <td>Tìm kiếm theo</td>
                <td>
                    <asp:DropDownList ID="ddlSearchBy" runat="server" OnSelectedIndexChanged="ddlSearchBy_SelectedIndexChanged">
                        <asp:ListItem Text="Artist"></asp:ListItem>
                        <asp:ListItem Text="Genres"></asp:ListItem>
                        <asp:ListItem Text="Album"></asp:ListItem>
                    </asp:DropDownList></td>
                <td>
                    <asp:Button ID="btnCreateAlbum" runat="server" Text="Tạo Album" OnClick="btnCreateAlbum_Click" /></td>
            </tr>
            <tr>
                <td>Chọn</td>
                <td><asp:DropDownList ID="ddlSearchOption" runat="server">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="3" class="timkiem">
                    <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" OnClick="btnSearch_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label></td>
                <td>
                    <asp:GridView ID="gvSongs" runat="server" OnSelectedIndexChanged="gvSongs_SelectedIndexChanged" AutoGenerateColumns="false" DataKeyNames="SongID">
                        <Columns>
                            <asp:BoundField DataField="SongName" HeaderText="Tên bài hát" HeaderStyle-CssClass="tieude"/>
                            <asp:ButtonField ButtonType="Link" Text="Chọn" CommandName="Select" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
