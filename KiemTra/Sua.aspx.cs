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
        Session["MaNV"] = maNV;
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
            Session["MaDV"] = dropDV.SelectedValue;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtFistName.Text == "" || txtLastName.Text == "" || Session["MaNV"] == null)
        {
            lblMess.Text = "Sửa không thành công !...! Bạn cần click Chọn trước khi click Sửa Đổi";
            return;
        }
        string maDV = (string)Session["MaDV"];
        string maNV = (string)Session["MaNV"];
        string newid = maNV;
        if (maDV != dropDV.SelectedValue)
        {
            newid = NewID(dropDV);
            Session["MaNV"] = newid;
            Session["MaDV"] = dropDV.SelectedValue;
        }
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("UPDATE NhanVien SET " + "MaNV = '" +  newid + "', HoNV = '" + txtFistName.Text.Trim() + "', TenNV = '" + 
            txtLastName.Text.Trim() + "', DienThoai = '" + txtPhone.Text.Trim() + "', Email = '" + 
            txtEmail.Text.Trim() + "', MaDV = " + Convert.ToInt32(dropDV.SelectedValue) + " WHERE MaNV = '" +  maNV + "'", cn);
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

    private string NewID(DropDownList item)
    {
        int SL = 0;
        string maNV = "";
        switch (item.SelectedValue)
        {
            case "1": maNV = "TC"; break;
            case "2": maNV = "TV"; break;
            case "3": maNV = "KT"; break;
            case "4": maNV = "KH"; break;
            case "5": maNV = "VT"; break;
        }
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("SELECT COUNT(MaNV) AS SL FROM NhanVien WHERE MaNV LIKE '" + maNV + "%'", cn);
        OleDbDataReader read;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            read.Read();
            SL = (int)read["SL"] + 1;
            read.Close();
        }
        if (SL < 10)
            maNV += "00" + SL;
        else if (SL < 100)
            maNV += "0" + SL;
        else
            maNV += SL;
        return maNV;
    }
}