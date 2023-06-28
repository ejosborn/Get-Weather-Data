<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TryIt1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Try-It Page --- Solar Service<br />
            <br />
            This is a Solar Energy Service that returns the annual average sunshine index of a given lat/long.<br />
            <br />
            Input lat and long below:</div>
        <p>
            Lat:<asp:TextBox ID="latEntry" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="latError" runat="server" Text="-"></asp:Label>
        </p>
        <p>
            Long:<asp:TextBox ID="lonEntry" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lonError" runat="server" Text="-"></asp:Label>
        </p>
        <asp:Button ID="submitBtn" runat="server" OnClick="submitBtn_Click" Text="Find Average" />
        <p>
            <asp:Label ID="outputLabel" runat="server" Text="-"></asp:Label>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://localhost:44360/Default.aspx">Back to Service Directory</asp:HyperLink>
    </form>
</body>
</html>
