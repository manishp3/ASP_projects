Imports System.Data
Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim obj As New dbconnection

    Protected Sub btnsbmt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsbmt.Click
        obj.query("insert into reg values('" + txtnm.Text + "','" + txtadd.Text + "','" + txtcity.Text + "'," + txtphone.Text + ")")
        fillgrid()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        obj.connection()
        fillgrid()
    End Sub

    Public Sub fillgrid()
        ds.Clear()
        adp = New SqlDataAdapter("select * from reg", obj.connection())
        adp.Fill(ds, "reg")
        GridView1.DataSource = ds.Tables("reg")
        GridView1.DataBind()
    End Sub

    Protected Sub btnupdt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdt.Click
        obj.query("update reg set Address='" + txtadd.Text + "',City='" + txtcity.Text + "'," + txtphone.Text + " where Name='" + txtnm.Text + "')")
        fillgrid()
    End Sub

    Protected Sub btndlt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndlt.Click
        obj.query("delete from reg where Name='" + txtnm.Text + "'")
        fillgrid()
    End Sub

   
    Protected Sub BTNSRCH_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BTNSRCH.Click
        ds.Clear()
        adp = New SqlDataAdapter("select * from reg where Name='" + txtnm.Text + "'", obj.connection())
        adp.Fill(ds, "reg")
        If (ds.Tables("reg").Rows.Count > 0) Then
            GridView1.DataSource = ds.Tables("reg")
            GridView1.DataBind()
        Else
            lblmsg.text = "No such record found"
        End If

    End Sub
End Class
