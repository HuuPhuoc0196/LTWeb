using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (ListItem item in rdbtn.Items)
        {
            if (item.Selected)
            {
                switch (item.Value)
                {
                    case "1": Server.Transfer("Xem.aspx"); break;
                    case "2": Server.Transfer("Them.aspx"); break;
                    case "3": Server.Transfer("Sua.aspx"); break;
                    case "4": Server.Transfer("Xoa.aspx"); break;
                }
            }
        }
    }
}