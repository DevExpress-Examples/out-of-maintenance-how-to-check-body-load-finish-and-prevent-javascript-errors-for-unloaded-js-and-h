Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Collections
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.ComponentModel
Imports DevExpress.Web.ASPxDataView
Imports System.Text
Imports DevExpress.Web.ASPxCallback
Imports System.Xml


Partial Public Class ASPxperience_DataView_ItemCommand
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		' Slow connection simulation
		If (Not String.IsNullOrEmpty(Request.Params("dummy"))) Then
			System.Threading.Thread.Sleep(5000)
			Response.Clear()
			Response.ContentType = "text/javascript"
			Response.Write("")
			Response.End()
		End If
	End Sub
	Protected Sub ASPxCallback1_Callback(ByVal source As Object, ByVal e As DevExpress.Web.ASPxCallback.CallbackEventArgs)
		e.Result = "Done!"
	End Sub
End Class