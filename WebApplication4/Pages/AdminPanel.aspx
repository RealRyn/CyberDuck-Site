<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="WebApplication4.Pages.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="Styles/StyleSheet1.css" rel="stylesheet" />
        <link href="/Styles/StyleSheet2.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                   <h1 id="title">total users online: <%= int.Parse(Application["onlineRegistered"].ToString()) + int.Parse(Application["onlineGuests"].ToString()) %> </h1>
                   <h1 id="title"> guests users online: <%= Application["onlineGuests"].ToString() %> </h1>

               <h1 id="title"> registered users online: <%= Application["onlineRegistered"].ToString() %> </h1>
</asp:Content>
