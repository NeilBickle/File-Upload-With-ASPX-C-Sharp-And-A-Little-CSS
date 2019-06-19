using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileUploadPage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnUpload_Click(object sender, EventArgs e)
    {
        LblStatus.Text = "";
        if (FileUploader.HasFile)
        {
            string ext = System.IO.Path.GetExtension(FileUploader.FileName);
            
                    if (ext ==".jpg" || ext == ".png" || ext == ".bmp" || ext == ".txt" || ext == ".jpeg" || ext == ".gif" || ext == ".PNG" || ext == ".JPG" || ext == ".JPEG")
                    {
                        string Path = Server.MapPath("Images\\");
                        string file = FileUploader.FileName;
                        FileUploader.SaveAs(Path + file);
                        LblStatus.Text = "Upload status: File uploaded!";
                    }
                    else
                        LblStatus.Text = "Upload status: The file could not be uploaded.";
            
        }
    }
}
