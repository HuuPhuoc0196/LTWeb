using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Sua : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadNV();
            LoadDV();
        }
    }

    private void LoadNV()
    {
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("SELECT MaNV, HoNV + ' ' + TenNV AS Name FROM NhanVien", cn);
        OleDbDataReader read;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            int i = 1;
            ListItem item;
            while (read.Read())
            {
                item = new ListItem();
                item.Text = i + ". " + read["Name"].ToString();
                item.Value = read["MaNV"].ToString();
                DropDownList2.Items.Add(item);
                i++;
            }
        }
    }

    private void LoadDV()
    {

        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM DonVi", cn);
        OleDbDataReader read;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            ListItem item;
            while (read.Read())
            {
                item = new ListItem();
                item.Text = read["TenDV"].ToString();
                item.Value = read["MaDV"].ToString();
                dropDV.Items.Add(item);
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Server.Transfer("TrangChu.aspx"); 
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        string maNV = DropDownList2.SelectedValue;
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM NhanVien WHERE MaNV = @MaNV", cn);
        cmd.Parameters.AddWithValue("@MaNV", maNV);
        OleDbDataReader read;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            read.Read();
            txtFistName.Text = read["HoNV"].ToString();
            txtLastName.Text = read["TenNV"].ToString();
            txtPhone.Text = read["DienThoai"].ToString();
            txtEmail.Text = read["Email"].ToString();
            dropDV.SelectedValue = read["MaDV"].ToString();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string maNV = DropDownList2.SelectedValue;
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("UPDATE NhanVien SET HoNV = @HoNV, TenNV = @TenNV, DienThoai = @DienThoai, Email = @Email, MaDV = @MaDV WHERE MaNV = @MaNV", cn);
        cmd.Parameters.AddWithValue("@MaNV", maNV);
        cmd.Parameters.AddWithValue("@HoNV", txtFistName.Text.Trim());
        cmd.Parameters.AddWithValue("@TenNV", txtLastName.Text.Trim());
        cmd.Parameters.AddWithValue("@DienThoai", txtPhone.Text.Trim());
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
        cmd.Parameters.AddWithValue("@MaDV", Convert.ToInt32(dropDV.SelectedValue));
        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            lblMess.Text = "Bạn vừa sửa thành công nhân viên có mã là: " + DropDownList2.SelectedValue;
            DropDownList2.Items.Clear();
            LoadNV();
            DropDownList2.SelectedValue = maNV;
        }
        catch (Exception ex)
        {
            lblMess.Text = "Lỗi " + ex.Message;
        }
    }
}