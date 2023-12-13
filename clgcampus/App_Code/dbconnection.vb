Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class dbconnection

    Dim cmd As SqlCommand
    Dim cn As SqlConnection

    Public Function connection() As SqlConnection
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ASP\exam_base\clgcampus\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

        cn.Open()
        Return cn
    End Function

    Public Sub query(ByVal str As String)
        cmd = New SqlCommand(str, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub
End Class
