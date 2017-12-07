<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            color: #000099;
        }
        .auto-style4 {
            color: #FF0066;
        }
        .auto-style5 {
            color: #000000;
        }
        .auto-style6 {
            color: #FF0066;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style3"><strong>TRANG CHỦ</strong></span><hr />
            <div class="auto-style2">
                <br />
                <span class="auto-style6">Chọn:</span><span class="auto-style5"> </span><span class="auto-style4">
                <asp:RadioButtonList ID="rdBtnListSwitch" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rdBtnListSwitch_SelectedIndexChanged" style="color: #003300">
                    <asp:ListItem Value="0">Xem danh sách nhân viên</asp:ListItem>
                    <asp:ListItem Value="1">Thêm nhân viên vào danh sách</asp:ListItem>
                    <asp:ListItem Value="2">Sửa đổi thông tin nhân viên</asp:ListItem>
                    <asp:ListItem Value="3">Xóa nhân viên</asp:ListItem>
                </asp:RadioButtonList>
                </span>
            </div>
        </div>
    </form>
</body>
</html>
