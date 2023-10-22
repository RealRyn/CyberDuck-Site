<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="MyFirsstDB.Pages.login" %>

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
    <title>Cyber Punk In Game Menu</title>
    <script src="/JavaScript Files/logincode.js"></script>
    <link href="/Styles/StyleSheet1.css" rel="stylesheet" />
    <link href="/Styles/logininstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="signin" method="post" runat="server">



        <div class="menu">

            <ul>
                <li onclick="openForm()">SIGN IN</li>

            </ul>
        </div>




        <div style="position: relative; margin-left: 480px; top: -90px" class="menu form-popup" id="myForm">

            <ul>

                <li>
                    <label style="color:#FCEE0C"; for="uName"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" id="uName" name="uName" required>
                </li>

                <li>
                    <label style="color: #FCEE0C" for="pass"><b>Password</b></label>
                    <input type="text" placeholder="Enter Password" id="pass" name="pass" required>
                </li>
                <input type="submit" name="submit" value="Login" onclick="func1()" class="btn" />
                

                <button type="button" class="btnclose" onclick="closeForm()">Close</button>
                                                                            <button type="reset" class="btnreset" onclick="func1()">Reset</button>

                                    <input type="hidden" placeholder="checker" id="check" name="check">

            </ul>
        </div>

    </form>
            <h1 id="new">default</h1>

                <h1 id="newUser">default</h1>







</asp:Content>
