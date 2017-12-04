<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            color: #000099;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <div class="auto-style2">
            <strong>QUẢN LÝ DANH SÁCH SINH VIÊN</strong></div>
        <hr />
        Chọn tác vụ cần thực hiện:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.<asp:LinkButton ID="linkbtnViewOrAdd" runat="server" OnClick="linkbtnViewOrAdd_Click">Xem / Thêm sinh viên</asp:LinkButton>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.<asp:LinkButton ID="linkbtnDelete" runat="server" OnClick="linkbtnDelete_Click">Xóa một sinh viên</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
