<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Xoa.aspx.cs" Inherits="Xoa" %>

<!DOCTYPE html>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                ForeColor="#FF9900" Text="XÓA NHÂN VIÊN"></asp:Label>
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
            &nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" ForeColor="#FF9900" 
                onclick="btnDelete_Click" Text="Xoa" />
            <br />
            <asp:Label ID="lblMess" runat="server" ForeColor="#CC0000"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                ForeColor="#FF9900" onclick="LinkButton1_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
        </div>
    
    <div>
    
    </div>
    </form>
</body>
</html>
