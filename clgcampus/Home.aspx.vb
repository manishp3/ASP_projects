Imports System.Data
Imports System.Data.SqlClient

Partial Class Home
    Inherits System.Web.UI.Page
    Dim obj As New dbconnection
    Dim ds As New DataSet
    Dim adp As SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        obj.connection()
    End Sub

    Protected Sub btninssrt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninssrt.Click
        obj.query("insert into car values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')")
        lblmsg.text = "Added succesfully"
    End Sub
End Class
