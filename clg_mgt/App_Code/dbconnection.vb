Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Public Class dbconnection
    Public cn As SqlConnection
    Public cmd As New SqlCommand

    Public Function connection() As SqlConnection
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ASP\exam_base\clg_mgt\App_Data\clginfo.mdf;Integrated Security=True;User Instance=True")
        cn.Open()
        Return cn
    End Function

    Public Sub query(ByVal str As String)
        cmd = New SqlCommand(str, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub
End Class
