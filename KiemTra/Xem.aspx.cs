﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Xem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {                                                                
        if (!IsPostBack)
        {
            LoadNV();
        }
    }

    private void LoadNV()
    {
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbCommand cmd = new OleDbCommand("SELECT MaNV, HoNV + ' ' + TenNV AS Name FROM NhanVien", cn);
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
                item.Text = i + ". " + read["Name"].ToString();
                item.Value = (string)read["MaNV"];
                DropDownList1.Items.Add(item);
                i++;
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Server.Transfer("TrangChu.aspx"); 
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        string strcn = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\HuuPhuoc\Desktop\LTWeb\KiemTra\App_Data\KiemTra.mdb";
        OleDbConnection cn = new OleDbConnection(strcn);
        OleDbDataAdapter adpt = new OleDbDataAdapter("SELECT * FROM NhanVien N , DonVi D WHERE N.MaDV = D.MaDV AND MaNV = @MaNV", cn);
        adpt.SelectCommand.Parameters.AddWithValue("@MaNV", DropDownList1.SelectedValue);
        DataTable table = new DataTable();
        adpt.Fill(table);

        DataList1.DataSource = table;
        DataList1.DataBind();
    }
}