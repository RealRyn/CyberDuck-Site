<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="jukebox.aspx.cs" Inherits="WebApplication4.jukebox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="/Styles/StyleSheet2.css" rel="stylesheet" />

        <link href="../Styles/StyleSheet3.css" rel="stylesheet" />
    <link href="../Styles/StyleSheet4.css" rel="stylesheet" />
    <link href="../Styles/ContentDesign.css" rel="stylesheet" />


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="font center">JukeBox <br />
       
    </h1>

    <footer">
            <div id="randTxt">  </div>

                                    <input id="button" type="submit" value="Play Sound" name="button" onclick="document.getElementById('testsound').play(); document.getElementById('testsound').volume = 0.25; document.getElementById('randTxt').innerHTML = ' NOW PLAYING: Hyper - Spoiler [Mix]'; document.getElementById('testsound').controls = 'controls'" />
                 <audio id="testsound" src="../Music/Hyper%20-%20Spoiler.mp3"/>

        
    </footer>
    <script>

    </script>
</asp:Content>
