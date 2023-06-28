<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TryIt3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Try-It Page --- WordFilter<br />
            <br />
            This service will take a string in from the user and filter out the following words from a sentence and return the string without the filtered words:<br />
            a, an ,in ,on, the, is, are, am<br />
            <br />
            <br />
            Input String Below:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Filtered String Output:<br />
            <asp:TextBox ID="stringEntry" runat="server" Height="176px" Width="279px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="filteredOutput" runat="server" Height="176px" Width="279px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="errorLabel" runat="server" Text="-"></asp:Label>
        </div>
        <asp:Button ID="submitBtn" runat="server" OnClick="submitBtn_Click" Text="Filter Words" />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://localhost:44360/Default.aspx">Back to Service Directory</asp:HyperLink>
        </p>
    </form>
</body>
</html>
