<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Them.aspx.cs" Inherits="Them" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            color: #FF9900;
        }
        .style1
        {
            font-size: x-large;
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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#FF9900" Text="THÊM NHÂN VIÊN VÀO DANH SÁCH"></asp:Label>
    </p>
    <hr />
    <span class="style2">&nbsp;&nbsp;&nbsp; </span>
    <br class="style2" />
    <span class="style1"><span class="style3">Nhập:</span>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <div style="margin-left: 40px">
    
        <span class="style2">Họ:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">Tên:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">ĐT:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">Email:</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">Đơn vị</span>:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#3333CC" 
            Width="119px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Đồng ý" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Hủy bỏ" />
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            ForeColor="#FF9900" onclick="LinkButton1_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
        <br />
    
    </div>
    </form>
</body>
</html>
