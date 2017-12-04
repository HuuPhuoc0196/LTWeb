using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewOrAdd : System.Web.UI.Page
{
    string cnStr = @"Data Source=.\SQLEXPRESS;Initial Catalog=Student_Data;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadDSSV();
            LoadDSLop();
        }
    }

    void LoadDSSV()
    {
        SqlConnection cn;
        using (cn = new SqlConnection(cnStr))
        {
            string query = "SELECT * FROM Students";
            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ListItem item;
            while (reader.Read())
            {
                item = new ListItem();
                item.Text = reader["FirstName"].ToString() + " " + reader["LastName"].ToString();
                item.Value = reader["StudentID"].ToString();
                dropID.Items.Add(item);
            }
        }
    }

    void LoadDSLop()
    {
        SqlConnection cn;
        using (cn = new SqlConnection(cnStr))
        {
            string query = "SELECT * FROM Classes";
            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ListItem item;
            while (reader.Read())
            {
                item = new ListItem();
                item.Text = reader["ClassName"].ToString();
                item.Value = reader["ClassID"].ToString();
                dropClassID.Items.Add(item);
            }
        }
    }

    void Can()
    {
        txtID.Text = "";
        txtFistName.Text = "";
        txtLastName.Text = "";
        txtPhone.Text = "";
        dropClassID.SelectedIndex = 0;
    }
    protected void linkbtnHome_Click(object sender, EventArgs e)
    {
        Server.Transfer("Home.aspx");
    }
    protected void btnCan_Click(object sender, EventArgs e)
    {
        Can();
    }


    protected void btnView_Click(object sender, EventArgs e)
    {
        View();
    }

    void View()
    {
        SqlConnection cn = new SqlConnection(cnStr);
        string query = "SELECT * FROM Students WHERE StudentID = @StudentID";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("StudentID", dropID.SelectedValue);
        SqlDataAdapter adap = new SqlDataAdapter(cmd);
        DataTable table = new DataTable();
        adap.Fill(table);
        GridView1.DataSource = table;
        GridView1.DataBind();
    }

    bool KiemTra()
    {
        if (txtID.Text.Trim() == "")
        {
            txtID.Text = "Bạn cần điền Mã sinh viên";
            return false;
        }
        if (txtFistName.Text.Trim() == "")
        {
            txtFistName.Text = "Bạn cần điền họ sinh viên ";
            return false;
        }
        if (txtLastName.Text.Trim() == "")
        {
            txtLastName.Text = "Bạn cần điền tên sinh viên";
            return false;
        }
        if (txtPhone.Text.Trim() == "")
        {
            txtPhone.Text = "Bạn cần điền số điện thoại ";
            return false;
        }
        return true;
    }

    void Insert()
    {
        if (KiemTra())
        {
            SqlConnection cn;
            using (cn = new SqlConnection(cnStr))
            {
                string query = "INSERT INTO Students VALUES( @StudentID, @FistName, @LastName, @Phone, @ClassID )";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@StudentID", txtID.Text.Trim());
                cmd.Parameters.AddWithValue("@FistName", txtFistName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                cmd.Parameters.AddWithValue("@ClassID", dropClassID.SelectedValue);
                cn.Open();
                cmd.ExecuteNonQuery();
                Can();
                lblMess.Text = "Thêm thành công";
            }
        }
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        Insert();
    }
}