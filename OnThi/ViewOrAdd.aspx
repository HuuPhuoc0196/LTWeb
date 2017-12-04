<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewOrAdd.aspx.cs" Inherits="ViewOrAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            color: #000099;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 85px;
        }
        .auto-style5 {
            width: 85px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style2">
            <strong>XEM / THÊM MỘT SINH VIÊN</strong></div>
        <hr />
        <br />
        Chọn sinh viên:
        <asp:DropDownList ID="dropID" runat="server" Height="22px" Width="128px">
        </asp:DropDownList>
&nbsp;<asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="Xem" Width="61px" />
        <br />
        <br />
        <strong>Thêm sinh viên mới:</strong><br />
        <table style="width: 88%;">
            <tr>
                <td class="auto-style4">Mã SV:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtID" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Họ SV:</td>
                <td>
                    <asp:TextBox ID="txtFistName" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Tên SV:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLastName" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Số ĐT:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPhone" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Lớp: </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="dropClassID" runat="server" Height="23px" Width="191px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="Đồng ý" />
&nbsp;<asp:Button ID="btnCan" runat="server" OnClick="btnCan_Click" Text="Hủy" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMess" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="580px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField FooterText="Mã SV" HeaderText="Mã SV">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="lblID" runat="server"></asp:Label>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField FooterText="Họ" HeaderText="Họ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="lblFisrName" runat="server"></asp:Label>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField FooterText="Tên" HeaderText="Tên">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="lblLastName" runat="server"></asp:Label>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField FooterText="Điện Thoại" HeaderText="Điện Thoại">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="lblPhone" runat="server"></asp:Label>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:LinkButton ID="linkbtnHome" runat="server" OnClick="linkbtnHome_Click">&lt;&lt; Trở về trang chủ</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
