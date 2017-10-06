<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bai1.aspx.cs" Inherits="Bai1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#0033CC" Text="Danh Sách Lớp"></asp:Label>
        <br />
        <hr />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="TenLop" DataValueField="MaLop">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SinhVienConnectionString %>" 
            SelectCommand="SELECT * FROM [Lop]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SinhVienConnectionString %>" 
            SelectCommand="SELECT [MSSV], [Ho], [Ten], [NgaySinh], [GioiTinh] FROM [SinhVien] WHERE ([MaLop] = @MaLop)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="MaLop" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="MSSV" DataSourceID="SqlDataSource2" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MSSV" HeaderText="MSSV" ReadOnly="True" 
                SortExpression="MSSV" />
            <asp:BoundField DataField="Ho" HeaderText="Ho" SortExpression="Ho" />
            <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" 
                SortExpression="NgaySinh" />
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" 
                SortExpression="GioiTinh" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    </form>
</body>
</html>
