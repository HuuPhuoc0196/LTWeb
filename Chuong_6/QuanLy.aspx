<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanLy.aspx.cs" Inherits="QuanLy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="QUẢN LỲ DANH SÁCH SINH VIÊN"></asp:Label>
    <br />
    <hr />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Chọn tác vụ cần thực hiện"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/XemThem.aspx">1. Xem/Thêm sinh viên</asp:LinkButton>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server">2. Xóa một sinh viên</asp:LinkButton>
    </form>
</body>
</html>
