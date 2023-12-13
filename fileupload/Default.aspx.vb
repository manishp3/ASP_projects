
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (FileUpload1.HasFile) Then
            FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName)
            Image1.ImageUrl = "~/img/" + FileUpload1.FileName
            Label1.Text = "Uploaded"
            Label1.Text = FileUpload1.PostedFile.ContentType
        Else
            Label1.Text = "Please select file"
        End If
    End Sub
End Class
