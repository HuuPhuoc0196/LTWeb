<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sua.aspx.cs" Inherits="Sua" %>

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
            font-size: x-large;
            color: #FF9900;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#FF9900" Text="SỬA ĐỔI THÔNG TIN NHÂN VIÊN"></asp:Label>
    </p>
    <hr />
    <span class="style2">&nbsp;&nbsp;&nbsp; </span>
    <br class="style2" />
    <span class="style1"><span class="style3">Chọn:</span>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="#3333CC" 
        Width="122px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSelect" runat="server" ForeColor="#FF9900" Text="Chọn" OnClick="btnSelect_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style4">Sửa:</span>&nbsp;&nbsp;&nbsp;
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
            Width="119px" AutoPostBack="True" OnSelectedIndexChanged="dropDV_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Sửa đổi" OnClick="btnAdd_Click" />
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            ForeColor="#FF9900" onclick="LinkButton1_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
    
        <br />
        <asp:Label ID="lblMess" runat="server" ForeColor="#CC0000"></asp:Label>
    
    </div>
    <div>
    
    </div>
    </form>
</body>
</html>
