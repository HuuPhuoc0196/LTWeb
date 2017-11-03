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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\B\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
            OleDbConnection cn = new OleDbConnection(strcn);
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