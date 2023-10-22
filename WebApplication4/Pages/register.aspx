<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MyFirsstDB.Pages.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Styles/mainstyle.css" rel="stylesheet" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/Styles/StyleSheet4.css" />
    <title>Cyber Punk In Game Menu</title>
    <script src="/JavaScript Files/LoginValidation.js"></script>
    <link href="/Styles/StyleSheet1.css" rel="stylesheet" />
    <link href="/Styles/logininstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" onload>
    <form method="post" runat="server">


        <!-->

        <!-->


        <div class="menu">

            <ul>
                <li onclick="openForm()">SIGN UP</li>

            </ul>
        </div>



        <div style="position: relative; margin-left: 480px; top: -90px" class="menu form-popup" id="myForm">

            <ul>

                <li>
                                     <label style="color:#FCEE0C"; for="uName"><b>Username</b></label>

                    <input type="text" placeholder="Enter Username" id="uName" name="uName">
                </li>

                <li>
                    <label style="color: #FCEE0C" for="lName"><b>Full Name</b></label>
                    <input type="text" placeholder="Enter Full Name" id="lName" name="lName">
                </li>


                <li>

                    <label style="color: #FCEE0C" for="fName"><b>First Name</b></label>
                    <input type="text" placeholder="Enter First Name" id="fName" name="fName">
                </li>

                <li>

                    <label style="color: #FCEE0C" for="age"><b>Year Born </b></label>
                    <input type="number" placeholder="Enter Year Born" id="Yborn" min="1950" max="2023" name="YBorn">
                </li>

                <li>

                    <label style="color: #FCEE0C" for="phone"><b>Phone No.</b></label>
                    <input type="tel" placeholder="Enter Phone Number" id="phone" name="phone">
                </li>


                <li>
                    <label style="color: #FCEE0C" for="pass"><b>Password</b></label>
                    <input type="text" placeholder="Enter Password" id="passwd" name="pass">
                </li>

                <li>
                    <label style="color: #FCEE0C" for="Email"><b>Email</b></label>
                    <input type="text" placeholder="Enter Email" id="email" name="email">
                </li>

                <input type="submit" name="send" value="Register" class="btn" onclick="func1()"/>

                <button type="button" class="btnclose" onclick="closeForm()">Close</button>

<button type="reset" class="btnreset" onclick="func1()">Reset</button>
                                                    <input type="hidden" placeholder="checker" id="check" name="check">

            </ul>
        </div>


        <!-->    
  <!-->

    </form>
    
                <h1  class="errordisplay" style="top:280px;" id="userCheck">default</h1>
    <h1 class="errordisplay" style="top:300px;" id="lastNameCheck">default</h1>
    <h1 class="errordisplay" style="top:320px;" id="firstNameCheck">default</h1>
    <h1 class="errordisplay" style="top:340px;" id="yearCheck">default</h1>
    <h1 class="errordisplay" style="top:360px;" id="phoneCheck">default</h1>
    <h1 class="errordisplay" style="top:380px;" id="passwordCheck">default</h1>
    <h1 class="errordisplay" style="top:400px;" id="emailCheck">default</h1>

    <!-->    

      
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
              <!-->
    <!-->
    <button type="submit" class="btn">Register</button>
        <!-->
    <button type="button" class="btnclose" onclick="closeSignUp()">Closed</button>
    <!-->
      </ul>
    </div>

    </form>

           <!-->

    <!-->     <!-->

    <h3 class="outcome" style="right: 600px">Select =<%= select %></h3>
    <h3 class="outcome" style="right: 1300px">Update =<%= update %></h3>
    <h3 class="outcome" style="right: 1700px">message =<%= msg %></h3>
</asp:Content>
