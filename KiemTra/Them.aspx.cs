using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Them : System.Web.UI.Page
{
    OleDbConnection cn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDV();  
        }
    }

    private void LoadDV()
    {
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("SELECT MaDV, TenDV FROM DonVi", cn);
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

    private void Clear()
    {
        txtFistName.Text = "";
        txtLastName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
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
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string maNV = NewID(dropDV);
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("INSERT INTO NhanVien VALUES( @MaNV, @HoNV, @TenNV, @DienThoai, @Email, @MaDV )", cn);
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
            lblMess.Text = "Đã thêm thành công nhân viên " + txtFistName.Text.Trim() + " " + txtLastName.Text.Trim() + " và có mã là: " + maNV;
            Clear();
            LoadSelect();
        }
        catch (Exception ex)
        {
            lblMess.Text = "Lỗi " + ex.Message;
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Clear();
    }

    private void LoadSelect()
    {
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbDataAdapter adpt = new OleDbDataAdapter("SELECT * FROM NhanVien N , DonVi D WHERE N.MaDV = D.MaDV", cn);
        DataTable table = new DataTable();
        adpt.Fill(table);

        DataList1.DataSource = table;
        DataList1.DataBind();
    }
}