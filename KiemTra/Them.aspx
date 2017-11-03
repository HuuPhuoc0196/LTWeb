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
        .style11
        {
            width: 325px;
        }
        .style6
        {
            width: 398px;
        }
        .style10
        {
            width: 468px;
        }
        .style4
        {
            width: 324px;
        }
        .style8
        {
            width: 303px;
        }
        .style9
        {
            width: 302px;
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
        <asp:TextBox ID="txtFistName" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">Tên:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">ĐT:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPhone" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">Email:</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" Width="173px"></asp:TextBox>
        <br />
        <br />
        <span class="style2">Đơn vị</span>:&nbsp;&nbsp;
        <asp:DropDownList ID="dropDV" runat="server" ForeColor="#3333CC" 
            Width="119px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Đồng ý" OnClick="btnAdd_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Hủy bỏ" OnClick="btnCancel_Click" />
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            ForeColor="#FF9900" onclick="LinkButton1_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="lblMess" runat="server" ForeColor="#CC0000"></asp:Label>
        <br />
        <br />
        <br />
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Width="698px">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
                    <hr />
                </HeaderTemplate>
                <ItemStyle BackColor="#EFF3FB" />
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
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        <br />
    
    </div>
    </form>
</body>
</html>
