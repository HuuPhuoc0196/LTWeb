<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai2.aspx.cs" Inherits="Bai2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 357px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#0033CC" Text="Giới thiệu sách"></asp:Label>
        <hr />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="CheckBoxList1_SelectedIndexChanged">
                    </asp:CheckBoxList>
                </td>
                <td>
                    <asp:BulletedList ID="BulletedList1" runat="server">
                    </asp:BulletedList>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
