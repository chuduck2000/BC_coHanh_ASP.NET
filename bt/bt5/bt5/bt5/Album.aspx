<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="bt5.Album" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="3">QUẢN LÝ ALBUM</td>
            </tr>
            <tr>
                <td>Tên Album</td>
                <td>
                    <asp:TextBox ID="txtAlbumName" runat="server"></asp:TextBox>
                </td>

                <td>
                    <asp:Button ID="btnCreateAlbum" runat="server" Text="Tạo Album" OnClick="btnCreateAlbum_Click" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAlbumName" runat="server" ErrorMessage="Phải nhập tên Album" ControlToValidate="txtAlbumName"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td colspan="3">
                    <asp:GridView ID="gvAlbum" runat="server" DataKeyNames="SongID" AutoGenerateColumns="false" OnSelectedIndexChanged="gvAlbum_IndexChanged">
                        <Columns>
                            <asp:BoundField DataField ="SongName" HeaderText="Tên bài hát"/>
                            <asp:BoundField DataField ="TenArtist" HeaderText="Tên tác giả"/>
                            <asp:BoundField DataField ="GenreName" HeaderText="Thể loại"/>
                            <asp:CommandField ShowSelectButton="true" HeaderText="Xóa" />
                            <asp:ButtonField ButtonType="Link" HeaderText="Xóa" Text="X" CommandName="select"/>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus" runat="server" Text="lblStatus"></asp:Label></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
