<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteEmployees.aspx.cs" Inherits="DeleteEmployees" %>

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
    </style>
</head>
<body>
    <div class="auto-style4">
        <strong>XÓA NHÂN VIÊN</strong></div>
    <hr />
    <form id="form1" runat="server">
        <div class="auto-style2">
            <span class="auto-style5"><strong>Danh sách:<br />
            </strong></span>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropEmployees" runat="server" Height="23px" Width="169px">
            </asp:DropDownList>
&nbsp;
            <asp:Button ID="btnDelete" runat="server" ForeColor="#CC0099" OnClick="btnSelect_Click" Text="Xóa" Width="69px" />
            <br />
            <br />
            <asp:LinkButton ID="linkbtnHome" runat="server" OnClick="linkbtnHome_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
            <br />
            <asp:Label ID="lblMess" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
    <div>
    
    </div>
    </form>
</body>
</html>
