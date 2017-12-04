<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            color: #000099;
        }
    </style>
</head>
<body>
    <div class="auto-style2">
        <strong>XÓA MỘT SINH VIÊN</strong></div>
    <hr />
    <form id="form1" runat="server">
    <div>
    
        Chọn sinh viên:
        <asp:DropDownList ID="dropID" runat="server" Height="22px" Width="128px">
        </asp:DropDownList>
&nbsp;<asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Xóa" Width="61px" />
        <br />
        <asp:Label ID="lblMess" runat="server"></asp:Label>
        <br />
        <asp:LinkButton ID="linkbtnHome" runat="server" OnClick="linkbtnHome_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
