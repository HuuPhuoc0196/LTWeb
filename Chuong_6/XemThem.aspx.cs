using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class XemThem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\B\Desktop\LTWeb\Chuong_6\App_Data\Students_Data.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True");
            SqlCommand cmd = new SqlCommand("SELECT StudentID, LastName + ' ' + FirstName AS name FROM Students", cn);
            SqlDataReader reader;
            ListItem item;
            SqlDataReader reader1;
            ListItem item1;
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Classes", cn);
            using (cn)
            {
                cn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    item = new ListItem();
                    item.Text = (string)reader["Name"];
                    item.Value = Convert.ToInt32(reader["StudentID"]).ToString();
                    DropDownList1.Items.Add(item);
                }
                reader.Close();
                reader1 = cmd1.ExecuteReader();
                while (reader1.Read())
                {
                    item1 = new ListItem();
                    item1.Text = (string)reader1["ClassName"];
                    item1.Value = Convert.ToInt32(reader1["ClassID"]).ToString();
                    DropDownList2.Items.Add(item1);
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*// kết nối
        SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\B\Desktop\LTWeb\Chuong_6\App_Data\Students_Data.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlCommand cmd = new SqlCommand("SELECT * FROM Students WHERE StudentID = @StudentID", cn);
        cmd.Parameters.AddWithValue("@StudentID", DropDownList1.SelectedValue);
        DataTable table = new DataTable();
        table.Columns.Add("StudentID");
        table.Columns.Add("LastName");
        table.Columns.Add("FirstName");
        table.Columns.Add("MobilePhone");
        using (cn)
        {
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DataRow row;
            while (reader.Read())
            {
                row = table.NewRow();
                row["StudentID"] = Convert.ToInt32(reader["StudentID"]);
                row["LastName"] = (string)reader["LastName"];
                row["FirstName"] = (string)reader["FirstName"];
                if (reader["MobilePhone"].ToString() != "")
                    row["MobilePhone"] = (string)reader["MobilePhone"];
                else
                    row["MobilePhone"] = "Chưa có";
                table.Rows.Add(row);
            }
            DataList1.DataSource = table;
            DataList1.DataBind();
        }
        */
        // phi kết nối
        SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\B\Desktop\LTWeb\Chuong_6\App_Data\Students_Data.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlDataAdapter adap = new SqlDataAdapter("SELECT * FROM Students WHERE StudentID = @StudentID", cn);
        adap.SelectCommand.Parameters.AddWithValue("@StudentID", DropDownList1.SelectedValue);
        DataTable table = new DataTable();
        adap.Fill(table);
        DataList1.DataSource = table;
        DataList1.DataBind();
        
    }
    protected void btnDongY_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\B\Desktop\LTWeb\Chuong_6\App_Data\Students_Data.MDF;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlCommand cmd = new SqlCommand("INSERT INTO Students VALUES(@StudentID, @FirstName, @LastName, @MobilePhone, @ClassID", cn);
        cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(txtID.Text));
        cmd.Parameters.AddWithValue("@FirstName", txtHo.Text);
        cmd.Parameters.AddWithValue("@LastName", txtTen.Text);
        cmd.Parameters.AddWithValue("@MobilePhone", txtSDT.Text);
        cmd.Parameters.AddWithValue("@ClassID", DropDownList2.SelectedItem.Text);
        using (cn)
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            Server.Transfer("XemThem.aspx");
        }
    }
}