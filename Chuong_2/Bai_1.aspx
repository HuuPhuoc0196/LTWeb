<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai_1.aspx.cs" Inherits="Bai_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
            text-align: center;
            font-size: xx-large;
            color: #3366FF;
            font-weight: 700;
            background-color: #CCCCFF;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 231px;
            font-size: large;
            color: #0066FF;
        }
        .style4
        {
            width: 231px;
            font-size: large;
            color: #0066FF;
        }
        .style6
        {
            width: 231px;
            font-size: large;
            height: 24px;
            color: #0066FF;
        }
        .style7
        {
            height: 24px;
        }
        .style8
        {
            color: #0066FF;
        }
        .style9
        {
            color: #0066FF;
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 77%;">
        <tr>
            <td class="style1" colspan="2">
                Đăng Ký Thông Tin</td>
        </tr>
        <tr>
            <td class="style3">
                Họ tên khách hàng</td>
            <td class="style2">
                <asp:TextBox ID="txtName" runat="server" Width="246px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="True" ForeColor="#FF3300">Tên khách hàng</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Email</td>
            <td class="style7">
                <asp:TextBox ID="txtEmail" runat="server" Width="246px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="True" ForeColor="#FF3300">Địa chỉ Email</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Giới tính</td>
            <td class="style9">
                <asp:RadioButton ID="rdBoy" runat="server" Checked="True" GroupName="Sex" 
                    Text="Nam" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdGirl" runat="server" GroupName="Sex" Text="Nữ" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Địa chỉ</td>
            <td class="style8">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="246px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="True" ForeColor="#FF3300">Địa chỉ</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Điện thoại</td>
            <td class="style8">
                <asp:TextBox ID="txtPhone" runat="server" Width="246px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtPhone" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="True" ForeColor="#FF3300">Số điện thoại</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btnDangKy" runat="server" BackColor="White" 
                    BorderColor="White" Font-Bold="True" ForeColor="#0033CC" 
                    PostBackUrl="~/KhachHang.aspx" Text="Đăng Ký" Width="75px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" BackColor="White" BorderColor="White" 
                    Font-Bold="True" ForeColor="#0033CC" onclick="btnCancel_Click" Text="Hủy" 
                    Width="75px" />
                <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
