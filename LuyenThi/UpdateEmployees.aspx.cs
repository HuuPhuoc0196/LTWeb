using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateEmployees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ShowEmployess();
            ShowPhongBan();
        }
    }

    protected void btnOke_Click(object sender, EventArgs e)
    {
        if (KiemTra())
        {
            Update();
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Cancel();
    }
    protected void linkbtnHome_Click(object sender, EventArgs e)
    {
        Server.Transfer("Home.aspx");
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        SelectEmployees();
    }
    protected void ShowEmployess()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "SELECT MaNV, Ho + ' ' + Ten AS Name FROM NhanVien";
        SqlCommand cmd = new SqlCommand(query, cn);
        SqlDataReader read;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            ListItem item;
            int i = 1;
            while (read.Read())
            {
                item = new ListItem();
                item.Text = i + ". " + read["Name"].ToString();
                item.Value = read["MaNV"].ToString();
                dropEmployees.Items.Add(item);
                i++;
            }
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
        if (txtFistName.Text.Trim() == "")
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

    protected void SelectEmployees()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "SELECT Ho , Ten , MaPB FROM NhanVien WHERE MaNV = @MaNV";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@MaNV", Convert.ToInt32(dropEmployees.SelectedValue));
        SqlDataReader read;
        using (cn)
        {
            cn.Open();
            read = cmd.ExecuteReader();
            read.Read();
            txtFistName.Text = read["Ho"].ToString();
            txtLastName.Text = read["Ten"].ToString();
            dropPhongBan.SelectedValue = read["MaPB"].ToString();
        }
    }

    protected void Update()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "UPDATE NhanVien Set Ho = @Ho, Ten = @Ten, MaPB = @MaPB WHERE MaNV = @MaNV";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@MaNV", dropEmployees.SelectedValue);
        cmd.Parameters.AddWithValue("@Ho", txtFistName.Text.Trim());
        cmd.Parameters.AddWithValue("@Ten", txtLastName.Text.Trim());
        cmd.Parameters.AddWithValue("@MaPB", dropPhongBan.SelectedValue);
        using (cn)
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            lblMess.Text = "Nhân viên " + txtFistName.Text.Trim() + " " + txtLastName.Text.Trim() + " đã được sửa";
            Cancel();
        }
    }
}