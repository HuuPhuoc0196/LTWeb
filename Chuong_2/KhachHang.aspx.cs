using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KhachHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            TextBox txtName = (TextBox)Page.PreviousPage.FindControl("txtName");
            TextBox txtEmail = (TextBox)Page.PreviousPage.FindControl("txtEmail");
            RadioButton rdBoy = (RadioButton)Page.PreviousPage.FindControl("rdBoy");
            TextBox txtAddress = (TextBox)Page.PreviousPage.FindControl("txtAddress");
            TextBox txtPhone = (TextBox)Page.PreviousPage.FindControl("txtPhone");
            String Sex = "Nữ";

            lblMess.Text += "<br /><li> Họ và tên: <b>" + txtName.Text + "</li> </b> <br />";
            lblMess.Text += "<li> Email: <b>" + txtEmail.Text + "</li> </b> <br />";
            if (rdBoy.Checked)
                Sex = "Nam";
            lblMess.Text += "<li> Giới tính: <b>" + Sex + "</li> </b> <br />";
            lblMess.Text += "<li> Địa chỉ: <b>" + txtAddress.Text + "</li> </b> <br />";
            lblMess.Text += "<li> Giới tính: <b>" + txtPhone.Text + "</li> </b> <br />";
        }
    }
}