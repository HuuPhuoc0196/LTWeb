<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateEmployees.aspx.cs" Inherits="UpdateEmployees" %>

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
            color: #000099;
        }
        .auto-style6 {
            width: 94px;
        }
        .auto-style7 {
            text-decoration: underline;
            color: #3333CC;
        }
        .auto-style8 {
            width: 741px;
        }
        .auto-style9 {
            width: 94px;
            height: 26px;
        }
        .auto-style10 {
            width: 741px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style4">
            <strong>SỬA ĐỐI THÔNG TIN NHÂN VIÊN</strong></div>
        <hr />
        <div class="auto-style2">
            <span class="auto-style5"><strong>Danh sách:</strong></span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropEmployees" runat="server" Height="23px" Width="169px">
            </asp:DropDownList>
&nbsp;
            <asp:Button ID="btnSelect" runat="server" ForeColor="#CC0099" OnClick="btnSelect_Click" Text="Chọn" Width="69px" />
            <br />
            <br />
            <span class="auto-style7"><strong>Sửa:</strong></span><br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9">Họ</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtFistName" runat="server" Width="158px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Tên</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtLastName" runat="server" Width="158px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Mã phòng ban</td>
                    <td class="auto-style10">
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
            <asp:Label ID="lblMess" runat="server" ForeColor="Red"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
