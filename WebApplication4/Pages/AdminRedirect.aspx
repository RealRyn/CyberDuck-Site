<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminRedirect.aspx.cs" Inherits="WebApplication4.Pages.AdminRedirect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        table {
            margin: 0px auto;
            direction: rtl;
            text-align: center;
        }
    </style>
    <link href="/Styles/mainstyle.css" rel="stylesheet" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/Styles/StyleSheet4.css" />
    <title>Admin Page</title>
    <script src="/JavaScript Files/logincode.js"></script>
    <link href="/Styles/StyleSheet1.css" rel="stylesheet" />
    <link href="/Styles/logininstyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="menu">

            <ul>
                                <li onclick="location.href='https://localhost:44319/Pages/AdminPanel'">Control Panel</li>
                                                <li onclick="location.href='https://localhost:44319/Pages/TableView'">Table Viewer</li>

            </ul>
        </div>
</asp:Content>
