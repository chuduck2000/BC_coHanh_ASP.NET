<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="Lab4.Album" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table >
            <tr>
                <td>Tên Album</td>
                <td><asp:TextBox runat="server" ID="txtAlbumName"></asp:TextBox></td>
                <td><asp:Button ID="btnCreateAlbum" runat="server" Text="Tạo Album" OnClick="btnCreateAlbum_Click"/></td>
            </tr>
            <tr>
                <td><asp:RequiredFieldValidator runat="server" ID="rfvAlbumName" ControlToValidate="txtALbumName" ErrorMessage="Phải nhập tên Album"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:GridView runat="server" ID="gvSongs" DataKeyNames="SongID" AutoGenerateColumns="false" OnSelectedIndexChanged="gvSongs_IndexChanged">
                    <Columns>
                        <asp:BoundField DataField="SongName" HeaderText="Tên bài hát" />
                        <asp:BoundField DataField="TenArtist" HeaderText="Tên tác giả" />
                        <asp:BoundField DataField="GenreName" HeaderText="Thể loại" />
                        <asp:CommandField ShowSelectButton="true" HeaderText="Xóa" />
                        <asp:ButtonField ButtonType="Link" HeaderText="Xóa" Text="X" CommandName="Select" />
                    </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblStatus" Text="lblStatus"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
