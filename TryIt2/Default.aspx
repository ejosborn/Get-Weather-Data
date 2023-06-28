<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TryIt2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Try-It Page --- Wind Intensity<br />
            <br />
            This is the Wind Intensity Service.<br />
            <br />
            Enter lat/long below:<br />
            <br />
            Lat:<asp:TextBox ID="latEntry" runat="server"></asp:TextBox>
            <br />
            Long:<asp:TextBox ID="lonEntry" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="submitBtn" runat="server" OnClick="submitBtn_Click" Text="Find Average Wind Speed" />
        <p>
            <asp:Label ID="outputLabel" runat="server" Text="-"></asp:Label>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://localhost:44360/Default.aspx">Back to Service Directory</asp:HyperLink>
    </form>
</body>
</html>
