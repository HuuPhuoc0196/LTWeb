<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Xem.aspx.cs" Inherits="Xem" %>

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
        .style4
        {
            width: 324px;
        }
        .style6
        {
            width: 398px;
        }
        .style8
        {
            width: 303px;
        }
        .style9
        {
            width: 302px;
        }
        .style10
        {
            width: 468px;
        }
        .style11
        {
            width: 325px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                ForeColor="#FF9900" Text="XEM DANH SÁCH NHÂN VIÊN"></asp:Label>
        </p>
        <hr />
        <span class="style2">&nbsp;&nbsp;&nbsp; </span>
        <br class="style2" />
        <span class="style1"><span class="style3">Danh sách:</span>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <div style="margin-left: 120px">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnSelect" runat="server" ForeColor="#FF9900" 
                onclick="btnSelect_Click" Text="Xem" />
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                ForeColor="#FF9900" onclick="LinkButton1_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server">
                <HeaderTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td class="style11">
                                Mã</td>
                            <td class="style6">
                                Họ</td>
                            <td class="style10">
                                Tên</td>
                            <td class="style4">
                                Điện thoại</td>
                            <td class="style8">
                                Phòng / Ban</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaNV") %>'></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("HoNV") %>'></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("TenNV") %>'></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("DienThoai") %>'></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("TenDV") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
