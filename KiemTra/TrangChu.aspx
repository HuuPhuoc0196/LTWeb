<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            color: #FF9900;
        }
        .style2
        {
            color: #FF9900;
        }
        .style3
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#FF9900" Text="QUẢN LÝ NHÂN VIÊN"></asp:Label>
    </p>
    <hr />
    <span class="style2">&nbsp;&nbsp;&nbsp; </span>
    <br class="style2" />
    <span class="style1"><span class="style3">Chọn:</span> </span>
    <div style="margin-left: 120px">
        <asp:RadioButtonList ID="rdbtn" runat="server" AutoPostBack="True" 
            ForeColor="#3333FF" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="1">1. Xem thông tin nhân viên</asp:ListItem>
            <asp:ListItem Value="2">2. Thêm nhân viên vào danh sách</asp:ListItem>
            <asp:ListItem Value="3">3. Sửa đổi thông tin nhân viên</asp:ListItem>
            <asp:ListItem Value="4">4. Xóa nhân viên</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <br />
    <div style="margin-left: 120px">
        <br />
    </div>
&nbsp;&nbsp;&nbsp;
    <br />
    </form>
</body>
</html>
