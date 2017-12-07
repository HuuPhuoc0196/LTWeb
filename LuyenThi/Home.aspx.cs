using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rdBtnListSwitch_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch(rdBtnListSwitch.SelectedValue)
        {
            case "0": Server.Transfer("ViewEmployees.aspx");
                break;
            case "1": Server.Transfer("InsertEmployees.aspx");
                break;
            case "2": Server.Transfer("UpdateEmployees.aspx");
                break;
            case "3": Server.Transfer("DeleteEmployees.aspx");
                break;
        }
    }
}