
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab4.WebForm1" %>

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
            <td >QUẢN LÝ BÀI HÁT</td>
        </tr>
        <tr>
            <td>Tìm kiếm theo</td>
            <td>
                <asp:DropDownList ID="ddlSearchBy" Width="135px" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="ddlSearchBy_SelectedIndexChanged">
                        <asp:ListItem Text="Artist" Value="0"></asp:ListItem>
                         <asp:ListItem Text="Genre" Value="1"></asp:ListItem>
                         <asp:ListItem Text="Album" Value="2"></asp:ListItem>
                 </asp:DropDownList>
            </td>
            
            <td>
                <asp:Button ID="btnCreateAlbum" runat="server" Text="Tạo Album" OnClick="btnCreateAlbum_Click" />
            </td>
            
            <td rowspan="3">
                <asp:GridView ID="gvSongs" runat="server" AutoGenerateColumns="false" DataKeyNames="SongID" OnSelectedIndexChanged="gvSongs_OnSelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="SongName" HeaderText="Tên bài hát" />
                        <asp:ButtonField ButtonType= "Link" Text="Chọn" CommandName="Select" />
                    </Columns>
                </asp:GridView>
                
            </td>
        </tr>
        <tr>
            <td>Chọn</td>
            <td>
                <asp:DropDownList ID="ddlSearchOption" runat="server">
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button runat="server" ID="btnSearch" Text="Tìm kiếm" OnClick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lbStus" Text="lbStatus"></asp:Label>
            </td>
            
        </tr>
        </table>    
    
    </div>
    </form>
</body>
</html>
