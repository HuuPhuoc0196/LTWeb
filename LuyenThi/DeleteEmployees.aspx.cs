using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteEmployees : System.Web.UI.Page
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
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        Delete();
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

    protected void Delete()
    {
        string Str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QLNhanVien;Integrated Security=True";
        SqlConnection cn = new SqlConnection(Str);
        string query = "DELETE FROM NhanVien WHERE MaNV = @MaNV";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@MaNV", dropEmployees.SelectedValue);
        using (cn)
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            lblMess.Text = "Bạn vừa xóa Nhân viên " + dropEmployees.SelectedItem.Text;
            dropEmployees.SelectedIndex = 0;
            
        }
    }

}