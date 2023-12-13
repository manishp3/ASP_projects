Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class Service
     Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function

    <WebMethod()> _
    Public Function min(ByVal a As Integer, ByVal b As Integer, ByVal c As Integer)
        If (a < b And a < c) Then
            Return a
        ElseIf (b < a And b < c) Then
            Return b
        ElseIf (a = b And a = c) Then
            Return "same"
        Else
            Return c
        End If
    End Function



End Class
