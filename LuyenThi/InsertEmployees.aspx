<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertEmployees.aspx.cs" Inherits="InsertEmployees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
            color: #000099;
        }
        .auto-style5 {
        }
        .auto-style6 {
            width: 132px;
        }
        .auto-style7 {
            text-decoration: underline;
            color: #FF9900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style4">
            <strong>THÊM NHÂN VIÊN VÀO DANH SÁCH</strong></div>
        <hr />
        <div class="auto-style2">
            <span class="auto-style7"><strong>Nhập:</strong></span><br />
&nbsp;&nbsp;&nbsp;
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">Họ</td>
                    <td>
                        <asp:TextBox ID="txtFistName" runat="server" Width="158px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Tên</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="158px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Mã phòng ban</td>
                    <td>
                        <asp:DropDownList ID="dropPhongBan" runat="server" Height="23px" Width="104px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnOke" runat="server" ForeColor="#000099" OnClick="btnOke_Click" Text="Đồng ý" Width="70px" />
&nbsp;
                        <asp:Button ID="btnCancel" runat="server" ForeColor="#0000CC" OnClick="btnCancel_Click" Text="Hủy bỏ" Width="70px" />
&nbsp;
                        <asp:LinkButton ID="linkbtnHome" runat="server" OnClick="linkbtnHome_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblMess" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
