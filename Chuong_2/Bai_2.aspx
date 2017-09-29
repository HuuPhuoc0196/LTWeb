<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai_2.aspx.cs" Inherits="Bai_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #000099;
            font-size: xx-large;
            background-color: #9999FF;
        }
        .style2
        {
        }
        .style3
        {
            width: 444px;
        }
        .style4
        {
            width: 165px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1" colspan="2" style="text-align: center">
                Đăng Ký Tài Khoản</td>
            <td class="style1" style="text-align: center">
                Thông Tin Đăng Ký</td>
        </tr>
        <tr>
            <td class="style4">
                Tên đăng nhập (*):</td>
            <td class="style3">
                <asp:TextBox ID="txtUser" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="173px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtUser" ErrorMessage="Tên đăng nhập không được trống" 
                    Font-Bold="True" ForeColor="#FF3300">Tên đăng nhập!</asp:RegularExpressionValidator>
            </td>
            <td rowspan="10">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Mật khẩu (*):</td>
            <td class="style3">
                <asp:TextBox ID="txtPass" runat="server" ontextchanged="TextBox1_TextChanged" 
                    TextMode="Password" Width="173px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="Mật khẩu không được trống" 
                    Font-Bold="True" ForeColor="#FF3300">Mật khẩu!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Nhập lại mật khẩu (*):</td>
            <td class="style3">
                <asp:TextBox ID="txtConfim" runat="server" ontextchanged="TextBox1_TextChanged" 
                    TextMode="Password" Width="173px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtConfim" ErrorMessage="Nhập lại mật khẩu không trống" 
                    Font-Bold="True" ForeColor="#FF3300">Mật khẩu!</asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPass" ErrorMessage="Mật khẩu không khớp" Font-Bold="True" 
                    ForeColor="#FF3300" SetFocusOnError="True">Mật khẩu!</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Họ và Tên (*):</td>
            <td class="style3">
                <asp:TextBox ID="txtName" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="173px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Họ và tên không được trống" 
                    Font-Bold="True" ForeColor="#FF3300">Họ và tên!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Ngày sinh (*):</td>
            <td class="style3">
                <asp:TextBox ID="txtBirthday" runat="server" 
                    ontextchanged="TextBox1_TextChanged" Width="173px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtBirthday" ErrorMessage="Ngày sinh không được trống" 
                    Font-Bold="True" ForeColor="#FF3300">Ngày sinh!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Giới tính (*):</td>
            <td class="style3">
                <asp:RadioButton ID="rdBoy" runat="server" Checked="True" GroupName="Sex" 
                    Text="Nam" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdGirl" runat="server" GroupName="Sex" Text="Nữ" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Địa chỉ</td>
            <td class="style3">
                <asp:TextBox ID="txtAddress" runat="server" 
                    ontextchanged="TextBox1_TextChanged" TextMode="MultiLine" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Số điện thoại</td>
            <td class="style3">
                <asp:TextBox ID="txtPhone" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Email (*):</td>
            <td class="style3">
                <asp:TextBox ID="txtEmail" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="173px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email không được trống" 
                    Font-Bold="True" ForeColor="#FF3300">Email!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
