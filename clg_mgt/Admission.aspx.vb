Imports System.Data.SqlClient
Imports System.Data
Partial Class Admission
    Inherits System.Web.UI.Page
    Dim obj As New dbconnection
    Dim ds As New DataSet
    Dim adp As SqlDataAdapter

    Protected Sub btninsrt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsrt.Click
        'obj.query("insert into clg values('" + txtfn.Text + "','" + txtln.Text + "','" + txtsn.Text + "'," + txtyr.Text + ",'" + ddl1.SelectedItem.ToString + "')")
        obj.query("insert into clg values('" + txtfn.Text + "','" + txtln.Text + "','" + txtsn.Text + "'," + txtyr.Text + ",'" + ddl1.SelectedItem.ToString + "')")
        fillgrid()
        lbl.Text = "added"
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        obj.connection()
    End Sub

    Public Sub fillgrid()
        ds.Clear()
        adp = New SqlDataAdapter("select * from clg ", obj.connection())
        adp.Fill(ds, "clg")

        dgv1.DataSource = ds.Tables("clg")
        dgv1.DataBind()

    End Sub

    Protected Sub btnupdt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdt.Click
        obj.query("update clg set LName='" + txtln.Text + "',Surname='" + txtsn.Text + "',Year=" + txtyr.Text + ",Gender='" + ddl1.SelectedItem.ToString + "' where FName='" + txtfn.Text + "'")
        fillgrid()
        lbl.Text = "Updated"
    End Sub

    Protected Sub btndlt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndlt.Click
        obj.query("delete from clg where FName='" + txtfn.Text + "'")
        lbl.Text = "Deleted"
    End Sub

    Protected Sub btndsply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndsply.Click
        ds.Clear()
        adp = New SqlDataAdapter("select * from clg where FName='" + txtfn.Text, obj.connection())
        adp.Fill(ds, "clg")
        If (ds.Tables("clg").Rows.Count > 0) Then
            dgv1.DataSource = ds.Tables("clg")
            dgv1.DataBind()
        Else
            lbl.Text = "No Found"
        End If
    End Sub
End Class
