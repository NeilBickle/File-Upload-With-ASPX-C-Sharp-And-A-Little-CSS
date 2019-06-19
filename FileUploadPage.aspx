<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileUploadPage.aspx.cs" Inherits="FileUploadPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FileUpload</title>
    <style>
        body {
        background-color: beige;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>File Upload In ASPX Program</h1>
        <table style="width: 45%; border: 10px solid black;">
            <tr>
                <td><asp:Label ID="LblInfo" runat="server" Text="Select A File To Upload:" Enabled="False"></asp:Label><asp:FileUpload ID="FileUploader" runat="server" /></td>
            </tr>      
            <tr>
                <td><asp:Label ID="LblUploadInfo" runat="server" Text="Click To Upload:" Enabled="False"></asp:Label><asp:Button ID="BtnUpload" runat="server" Text="Upload File" onclick="BtnUpload_Click" /></td>
            </tr>
            <tr>
                <td><asp:Label runat="server" id="LblStatus" text="Status Of Upload: " /></td>
            </tr>
        </table>
    </form>
</body>
</html>
