Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Public Class dbconnection
    Dim cn As SqlConnection
    Dim cmd As SqlCommand
    Public Function connection() As SqlConnection
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ASP\exam_base\mainsitecoverall\App_Data\studinfo.mdf;Integrated Security=True;User Instance=True")
        cn.Open()
        Return cn
    End Function

    Public Sub query(ByVal str As String)
        cmd = New SqlCommand(str, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub
End Class
