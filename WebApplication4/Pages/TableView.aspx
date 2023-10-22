<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="True" CodeBehind="TableView.aspx.cs" Inherits="WebApplication4.Pages.TableView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/mainstyle.css" rel="stylesheet" />
        <link href="../Styles/StyleSheet1.css" rel="stylesheet" />
    <link href="../Styles/StyleSheet2.css" rel="stylesheet" />
    <style>
        body{
                      overflow-y: auto	; /* Hide vertical scrollbar */
                      overflow:auto;
                      height: 2500px;
        }
        html{
    min-height:100%;/* make sure it is at least as tall as the viewport */
    position:relative;
}
body{
    height:100%; /* force the BODY element to match the height of the HTML element */
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <form id="form1" runat="server"  >
           <input type="text" name="txtDel" id="txtDel" runat="server"/>
           <input type="button" value="Delete" onserverclick="Delete" runat="server"/>
    </form>
<h1>טבלת משתמשים</h1>

        <table style="border:1px solid black; margin: 0px auto; position:absolute; margin-top:-100px; margin-left:600px" >
    <%= st %>
</table>
    <h2><%= sqlSelect %></h2>




<h3><%= msg %></h3>
</asp:Content>
