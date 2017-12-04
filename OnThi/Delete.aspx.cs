using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete : System.Web.UI.Page
{
    string cnStr = @"Data Source=.\SQLEXPRESS;Initial Catalog=Student_Data;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadDSSV();
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
    protected void linkbtnHome_Click(object sender, EventArgs e)
    {
        Server.Transfer("Home.aspx");
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection cn;
        using (cn = new SqlConnection(cnStr))
        {
            string query = "DELETE FROM Students WHERE StudentID = @StudentID";
            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@StudentID", dropID.SelectedValue);
            cn.Open();
            cmd.ExecuteNonQuery();
            lblMess.Text = "Xóa thành công sinh viên: " + dropID.SelectedItem.Text;
            dropID.SelectedIndex = 0;
        }
    }

}