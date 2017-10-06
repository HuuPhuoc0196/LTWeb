using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Bai2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String path;
        String[] files;
        path = Server.MapPath(Request.ApplicationPath) + "\\Images";    // trả về là đường dẫn ứng dụng + \\Images
        if (Directory.Exists(path))
        {
            files = Directory.GetFiles(path); // lấy đường dẫn tuyệt đối đến các file hình ảnh

            for (int i = 0; i < files.Length; i++)
                files[i] = Path.GetFileName(files[i]);      // lấy tên files và phần mở rộng của files

            ListItem item;
            for (int i = 0; i < files.Length; i++)
            {
                item = new ListItem();
                item.Text = "<img src='Images\\" + files[i] + "' height = '150' width = '150' />";
                item.Value = Path.GetFileNameWithoutExtension(files[i]);
                CheckBoxList1.Items.Add(item);
            }

        }
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}