using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewEmployees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ShowEmployess();
        }
    }
    protected void linkbtnHome_Click(object sender, EventArgs e)
    {
        Server.Transfer("Home.aspx");
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        ShowEmployees();
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
    protected void ShowEmployees()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "SELECT s.* , p.TenPB , p.ChiNhanh FROM NhanVien s, PhongBan p WHERE s.MaPB = p.MaPB AND MaNV = @MaNV";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@MaNV", Convert.ToInt32(dropEmployees.SelectedValue));
        DataTable table = new DataTable();
        SqlDataAdapter adap = new SqlDataAdapter(cmd);
        adap.Fill(table);
        gvShowEmployees.DataSource = table;
        gvShowEmployees.DataBind();
    }
}