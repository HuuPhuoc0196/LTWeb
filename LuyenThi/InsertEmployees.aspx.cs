using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsertEmployees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
            ShowPhongBan();
    }
    protected void linkbtnHome_Click(object sender, EventArgs e)
    {
        Server.Transfer("Home.aspx");
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Cancel();
    }
    protected void btnOke_Click(object sender, EventArgs e)
    {
        if (KiemTra())
        {
            Insert();
        }
    }
    protected void ShowPhongBan()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "SELECT MaPB , TenPB FROM PhongBan";
        SqlCommand cmd = new SqlCommand(query, cn);
        SqlDataReader read;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            ListItem item;
            while (read.Read())
            {
                item = new ListItem();
                item.Text = read["TenPB"].ToString();
                item.Value = read["MaPB"].ToString();
                dropPhongBan.Items.Add(item);
            }
        }
    }

    protected void Cancel()
    {
        txtFistName.Text = "";
        txtLastName.Text = "";
        dropPhongBan.SelectedIndex = 0;
    }

    protected bool KiemTra()
    {
        lblMess.Text = "";
        if(txtFistName.Text.Trim() == "")
        {
            lblMess.Text += "Bạn chưa điền họ";
            return false;
        }
        if (txtLastName.Text.Trim() == "")
        {
            lblMess.Text += "Bạn chưa điền tên";
            return false;
        }
        return true;
    }

    protected void Insert()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "INSERT INTO NhanVien VALUES ( @MaNV , @Ho, @Ten, @MaPB)";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@MaNV", Count());
        cmd.Parameters.AddWithValue("@Ho", txtFistName.Text.Trim());
        cmd.Parameters.AddWithValue("@Ten", txtLastName.Text.Trim());
        cmd.Parameters.AddWithValue("@MaPB", dropPhongBan.SelectedValue);
        using (cn)
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            lblMess.Text = "Nhân viên " + txtFistName.Text.Trim() + " " + txtLastName.Text.Trim() + " đã được thêm";
            Cancel();
        }
    }

    protected int Count()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "SELECT MaNV FROM NhanVien ORDER BY MaNV DESC";
        SqlCommand cmd = new SqlCommand(query, cn);
        SqlDataReader read;
        int soLuong = -1;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            read.Read();
            soLuong = Convert.ToInt32(read["MaNV"].ToString());
        }
        return soLuong + 1;
    }
}