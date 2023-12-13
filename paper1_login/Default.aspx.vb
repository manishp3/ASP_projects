Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim obj As New dbconnection
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet


    Protected Sub btnsbmt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsbmt.Click
        ds.Clear()
        adp = New SqlDataAdapter("select * from login where Username='" + txtnm.Text + "'", obj.connection())
        adp.Fill(ds, "login")
        Dim uname As String
        Dim pass As String

        If (ds.Tables("login").Rows.Count > 0) Then
            uname = ds.Tables("login").Rows(0)("Username").ToString
            pass = ds.Tables("login").Rows(0)("Password").ToString
            If (txtnm.Text = uname And txtpwd.Text = Pass) Then
                Session("uname") = txtnm.Text
                Response.Redirect("wel.aspx")
            Else
                lblmsg.Text = "UserName or Password Are Invalid"
            End If
            
        Else
            lblmsg.Text = "UserName or Password Are Invalid"
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        obj.connection()

    End Sub

    Protected Sub btnclr_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnclr.Click
        txtnm.Text = ""
        txtpwd.Text = ""
    End Sub
End Class
