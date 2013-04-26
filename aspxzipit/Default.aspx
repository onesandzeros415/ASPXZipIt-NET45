﻿<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="ASPXZipIt.zipit_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>ASPXZipIt-Backup-Web Content</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <ul class="tabs group">
                <li class="active"><a href="#" onfocus="this.blur();">Files</a></li>
                <li><a href="zipit-db.aspx" onfocus="this.blur();">Databases</a></li>
                <li><a href="zipit-logs.aspx" onfocus="this.blur();">Logs</a></li>
                <li><a href="zipit-settings.aspx" onfocus="this.blur();">Settings</a></li>
            </ul>
        </center>
        <div class="wrapper">
            <asp:ScriptManager ID="MainScriptManager" runat="server" />
            <center>
                <div class="head">
                    ASPXZipit Backup Utility
                </div>
                <h2>Available File Backups</h2>
                <br />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                <br />
            </center>
            <center>
                <em>
                    <br />
                    <br />
                    <asp:GridView ID="availablebackups_gridview" OnRowDeleting="availablebackups_gridview_RowDeleting"
                        AutoGenerateSelectButton="true" AutoGenerateDeleteButton="true" BorderWidth="0"
                        BorderColor="#EEEEEE" runat="server">
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                </em>
            </center>
            <br />
            <asp:Label runat="server" ID="lblInfo" ForeColor="Red" Text="" />
            <br />
            <asp:Label runat="server" ID="lblInfo2" ForeColor="Red" Text="" />
            <br />
            <br />
            <center>
                <div>
                    <asp:Button CssClass="button" ID="btnLongRuningTask" runat="server" Text="Zip It"
                        OnClick="BackupWebSiteContent_Click" Width="150px" />
                    <br />
                    <br />
                </div>
                <font size="1em">ASPXZipit Backup provided by <a href="http://onesandzeros415.github.com/ASPXZipIt-NET40/"
                    target="_blank">Matthew Costello</a></font>
            </center>
        </div>
    </form>
</body>
</html>
