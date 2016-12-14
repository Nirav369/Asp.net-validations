<%@ Page Language="VB" AutoEventWireup="false" CodeFile="second.aspx.vb" Inherits="second" UnobtrusiveValidationMode="None"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        First Name: <% Response.Write(Request.Form("txtFirstName"))%>
    <br />
    Last Name: <% Response.Write(Request.Form("txtLastName"))%>
    <br />
    Desired yearly salary: <% Response.Write(Request.Form("txtYearlySalary"))%>
    <br />
    Department you would like to work for: <% Response.Write(Request.Form("liDepartment"))%>
    <br />
    Health Insurance Required?: <% Response.Write(Request.Form("rblHealthInsurance"))%>
    <br />
    Desired Interview Date: <% Response.Write(Request.Form("txtInterviewDate"))%>
    </div>
    </form>
</body>
</html>
