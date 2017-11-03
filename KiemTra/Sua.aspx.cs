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
            string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\B\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
            OleDbConnection cn = new OleDbConnection(strcn);
            OleDbCommand cmd = new OleDbCommand("SELECT MaNV, HoNV, TenNV FROM NhanVien", cn);
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
                    item.Text = i + ". " + read["HoNV"].ToString() + " " + read["TenNV"].ToString();
                    DropDownList2.Items.Add(item);
                    i++;
                }
            }
            string strcn1 = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\B\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
            OleDbConnection cn1 = new OleDbConnection(strcn1);
            OleDbCommand cmd1 = new OleDbCommand("SELECT MaDV, TenDV FROM DonVi", cn1);
            OleDbDataReader read1;
            using (cn1)
            {
                cn1.Open();
                read1 = cmd1.ExecuteReader();
                ListItem item;
                while (read1.Read())
                {
                    item = new ListItem();
                    item.Text = read1["TenDV"].ToString();
                    DropDownList1.Items.Add(item);
                }
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Server.Transfer("TrangChu.aspx"); 
    }
}