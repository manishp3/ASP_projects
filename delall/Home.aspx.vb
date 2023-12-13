Imports System.Data
Imports System.Data.SqlClient
Partial Class Home
    Inherits System.Web.UI.Page
    Dim obj As New dbconnection
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub insrt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles insrt.Click
        obj.query("insert into stud values('" + txtnm.Text + "'," + txtyr.Text + ",'" + txtschl.Text + "')")
        lbl.text = "added"
    End Sub

    Protected Sub insrt_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles insrt.Load
        obj.connection()
    End Sub
End Class
