<%@ Page Language="VB" AutoEventWireup="false" CodeFile="first.aspx.vb" Inherits="first" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValSumForm" DisplayMode="List" 
            EnableClientScript="true" HeaderText="Error in the Following fields:" runat="server" BackColor="#99CCFF" ForeColor="Red" />
        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
            ControlToValidate="txtFirstName" ErrorMessage="First name missing !" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
            ControlToValidate="txtLastName" ErrorMessage="Last name missing !" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblYearlySalary" runat="server" Text="Desired yearly salary:"></asp:Label>
        <asp:TextBox ID="txtYearlySalary" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvYearlySalary" runat="server" 
            ControlToValidate="txtYearlySalary" ErrorMessage="Desired Yearly Salary is missing !" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvYearlySalary" ControlToValidate="txtYearlySalary"
           MinimumValue="1" MaximumValue="100000" Type="Integer" Text="*" runat="server" 
           ErrorMessage="Enter a positive value !" ForeColor="Red"></asp:RangeValidator>
        <br />
        <asp:Label ID="lblDepartment" runat="server" Text="Department you would like to work for: "></asp:Label>
        <asp:DropDownList ID="liDepartment" runat="server">
            <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Development" Value="Development"></asp:ListItem>
            <asp:ListItem Text="QA" Value="QA"></asp:ListItem>
            <asp:ListItem Text="Support" Value="Support"></asp:ListItem>
            <asp:ListItem Text="Data Management" Value="Data Management"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" 
            ControlToValidate="liDepartment" ErrorMessage="Department is missing !" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblHealthInsurance" runat="server" Text="requires Health Insurance"></asp:Label>
        <asp:RadioButtonList ID="rblHealthInsurance" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="rfvHealthInsurance" runat="server"
            ControlToValidate="rblHealthInsurance" ErrorMessage="Health Insurance Selection is missing !" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblInterviewDate" runat="server" Text="Date the applicant would like to interview: "></asp:Label>
        <asp:TextBox ID="txtInterviewDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvInterviewDate" runat="server"
            ControlToValidate="txtInterviewDate" ErrorMessage="Interview Date is missing !" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:CompareValidator id="cvInterviewDate" runat="server" Type="Date" Operator="DataTypeCheck"
            ControlToValidate="txtInterviewDate" ErrorMessage="Invalid date format" ForeColor="Red" >*</asp:CompareValidator>
        <asp:RangeValidator ID="rvInterviewDate" runat="server" ControlToValidate="txtInterviewDate"
            ErrorMessage="Invalid date! Select month within 4 monhts" Type="Date" ForeColor="Red">*</asp:RangeValidator>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" PostBackUrl="~/second.aspx" />
    </div>
    </form>
</body>
</html>
