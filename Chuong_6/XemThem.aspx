<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XemThem.aspx.cs" Inherits="XemThem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 101px;
        }
        .style5
        {
            width: 140px;
        }
        .style8
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <asp:Label ID="Label1" runat="server" Text="Xem/Thêm sinh viên"></asp:Label>
    <br />
    <hr />
    <asp:Label ID="Label2" runat="server" Text="Chọn 1 sinh viên:"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Xem" onclick="Button1_Click" />
     <br />
     <table style="width: 40%;">
         <tr>
             <td class="style8">
                 Mã SV:</td>
             <td>
                 <asp:TextBox ID="txtID" runat="server" Width="180px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style8">
                 Họ</td>
             <td>
                 <asp:TextBox ID="txtHo" runat="server" Width="181px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style8">
                 Tên</td>
             <td>
                 <asp:TextBox ID="txtTen" runat="server" Width="180px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style8">
                 Số điện thoại</td>
             <td>
                 <asp:TextBox ID="txtSDT" runat="server" Width="182px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style8">
                 Lớp</td>
             <td>
                 <asp:DropDownList ID="DropDownList2" runat="server">
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style8" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnDongY" runat="server" onclick="btnDongY_Click" 
                     Text="Chấp nhận" />
&nbsp;&nbsp;
                 <asp:Button ID="btnCancel" runat="server" onclick="btnDongY_Click" 
                     Text="Hủy bỏ" />
             </td>
         </tr>
     </table>
     <br />
    <br />
     <br />
     <asp:DataList ID="DataList1" runat="server">
         <HeaderTemplate>
             Thông tin về sinh viên:<hr style="width: 827px; margin-top: 0px; height: -5px;" />
             <table style="width:99%;">
                 <tr>
                     <td class="style4">
                         Mã SV</td>
                     <td class="style5">
                         Họ</td>
                     <td class="style8">
                         Tên</td>
                     <td>
                         Điện thoại</td>
                 </tr>
             </table>
         </HeaderTemplate>
         <ItemTemplate>
             <table style="width:100%;">
                 <tr>
                     <td class="style4">
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("StudentID") %>'></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                     </td>
                     <td class="style8">
                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("MobilePhone") %>'></asp:Label>
                     </td>
                 </tr>
             </table>
         </ItemTemplate>
     </asp:DataList>
    </form>
</body>
</html>
