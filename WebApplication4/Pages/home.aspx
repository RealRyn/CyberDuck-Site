<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication4.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Styles/StyleSheet2.css" rel="stylesheet" />
        <link href="../Styles/StyleSheet3.css" rel="stylesheet" />
    <link href="../Styles/StyleSheet4.css" rel="stylesheet" />
    <script src="../JavaScript%20Files/logincode.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 id="title" style="font-size:450%">
        Welcome to CyberDuck, the most underground illegal platform for equipping bootleg Cyberwear.


    </h1>

    <p id="subtext" style="font-size:200%">
                 In Night City dangers, Cyberwear is crucial for survival.

    </p>

    <footer id="text1">
        © 2023 Peleg Ryn, Inc.
    </footer>
    <footer id="text2">
                <a data-attr="text3" id="text3" href="/Pages/terms-of-service.aspx">Terms of Service</a>
    </footer>

            <footer id="pic" >

<%--                                        <img src="/Pictures/profilepicguest.png" />--%>
                <div id="randImage"></div>

    </footer>
        <script>




            ImageArray = new Array();
            ImageArray[0] = '<img src="../Pictures/pfps/davidpfp1.png" />';
            ImageArray[1] = '<img src="../Pictures/pfps/davidpfp2.png" />';;
            ImageArray[2] = '<img src="../Pictures/pfps/faradaypfp.png" />';;
            ImageArray[3] = '<img src="../Pictures/pfps/mainepfp.png" />';;
            ImageArray[4] = '<img src="../Pictures/pfps/rebpfp.png" />';;
            ImageArray[5] = '<img src="../Pictures/profilepicguest.png" />';;

            function getRandomImage1() {
                var num = Math.floor(Math.random() * 6);
                var img = ImageArray[num];
                document.getElementById("randImage").innerHTML = (img);
                console.log("mewwwwwwwwwww");
            }




        </script>
                

</asp:Content>


