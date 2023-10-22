<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TicTacToe.aspx.cs" Inherits="WebApplication4.Pages.TicTacToe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../JavaScript%20Files/index.js"></script>
    <link href="../Styles/TicTacToeStyle.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main class="background">
        <section class="title">
            <h1>Tic Tac Punk</h1>
        </section>
        <section class="display">
            Player <span class="display-player playerX">X</span> turn
        </section>
        <section class="container">
            <div class="tile"></div>
            <div class="tile"></div>
            <div class="tile"></div>
            <div class="tile"></div>
            <div class="tile"></div>
            <div class="tile"></div>
            <div class="tile"></div>
            <div class="tile"></div>
            <div class="tile"></div>
        </section>
        <section class="display announcer hide"></section>
        <section class="controls">
            <button id="reset">Reset</button>
        </section>
    </main>

</asp:Content>

