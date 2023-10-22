<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login - ignore.aspx.cs" Inherits="WebApplication4.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/Styles/StyleSheet4.css" />
    <title>Cyber Punk In Game Menu</title>
        <script src="/JavaScript Files/logincode.js"></script>
        <link href="/Styles/StyleSheet1.css" rel="stylesheet" />
    <link href="/Styles/logininstyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="menu">

      <ul>
        <li onclick="openForm()">SIGN IN</li>
        <li onclick="openSignUp()">SIGN UP</li>

      </ul>
    </div>

    

            <div style="position:relative; margin-left:480px; top:-178px" class="menu form-popup" id="myForm" >

      <ul>
        <li >          <label style="color:#FCEE0C"; for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required></li>
        <li>              <label style="color:#FCEE0C" for="name"><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="name" required></li>

        <li>              <label  style="color:#FCEE0C"for="age"><b>Age &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></label>
    <input type="number" placeholder="Enter Age" name="age" required>
</li>

          <li>
                  <label style="color:#FCEE0C" for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
          </li>
          
    <button type="submit" class="btn">Login</button>
    <button type="button" class="btnclose" onclick="closeForm()">Close</button>
      </ul>
    </div>


                <div style="position:relative; margin-left:480px; top:-80px" class="menu form-popup" id="mySignUp" >

      <ul>
        <li >          <label style="color:#FCEE0C"; for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required></li>
        <li>              <label style="color:#FCEE0C" for="name"><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="name" required></li>

        <li>              <label  style="color:#FCEE0C"for="age"><b>Age &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></label>
    <input type="number" placeholder="Enter Age" name="age" required>
</li>

          <li>
                  <label style="color:#FCEE0C" for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
          </li>
          
    <button type="submit" class="btn">Register</button>
    <button type="button" class="btnclose" onclick="closeSignUp()">Close</button>
      </ul>
    </div>

    <!-->
 <div class="form-popup" id="myForm">

  <form action="/action_page.php" class="form-container">
    <h1  style="color:#FCEE0C">Login</h1>



          <label style="color:#FCEE0C"; for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

              <label style="color:#FCEE0C" for="name"><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="name" required>

              <label  style="color:#FCEE0C"for="age"><b>Age</b></label>
    <input type="number" placeholder="Enter Age" name="age" required>

    <label style="color:#FCEE0C" for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" class="btn">Login</button>
    <button type="button" class="btnclose" onclick="closeForm()">Close</button>
  </form>
</div>
            <!-->

</asp:Content>
