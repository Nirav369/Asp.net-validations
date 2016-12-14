
Partial Class first
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            rvInterviewDate.MinimumValue = Today.ToShortDateString
            rvInterviewDate.MaximumValue = Today.AddMonths(4).ToShortDateString
        End If
    End Sub
End Class