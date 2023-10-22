<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateTable.aspx.cs" Inherits="WebApplication4.Pages.UpdateTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../Styles/mainstyle.css" rel="stylesheet" />
        <link href="../Styles/StyleSheet1.css" rel="stylesheet" />
    <link href="../Styles/StyleSheet2.css" rel="stylesheet" />
    <script src="../JavaScript%20Files/UpdateScript.js"></script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Update Details Form</h1>
    <form id="mainform" runat="server"  onsubmit="RegisterVerification()">

        <label class="tabletext" for="uName">User name</label>
        <input type="text" id="uName" name="uName" value="<%= uName %>" placeholder="<%=uName %>" />
        <h4 class="erorr" id="uNameErorr"></h4>

        <label class="tabletext" for="passwd">Password</label>
        <input type="text" id="passwd" name="passwd" value="<%= passwd %>" placeholder="<%=passwd %>" />
        <h4 class="erorr" id="passwdErorr"></h4>

        <label class="tabletext" for="lName">Last name</label>
        <input type="text" id="lName" name="lName" value="<%= lName %>" placeholder="<%=lName %>" />
        <h4 class="erorr" id="lNameErorr"></h4>

        <label class="tabletext" for="fName">First name</label>
        <input type="text" id="fName" name="fName" value="<%= fName %>" placeholder="<%=fName %>" />
        <h4 class="erorr" id="fNameErorr"></h4>

                <label class="tabletext" for="year">Year Born</label>
        <input type="number" id="yearBorn" name="yearBorn" value="<%= yearBorn %>" placeholder="<%=yearBorn %>" />
        <h4 class="erorr" id="yearErorr"></h4>

        <label class="tabletext" for="phone">Phone Number</label>
        <input type="text" id="phone" name="phone" value="<%= phone %>" placeholder="<%=phone %>" />
        <h4 class="erorr" id="phoneErorr"></h4>

        <label class="tabletext" for="email">Email</label>
        <input type="text" id="email"  name="email" value="<%= email %>" placeholder="<%=email %>"/>
        <h4 class="erorr" id="emailErorr"></h4>

        <label class="tabletext" for="admin">Admin</label>
        <input type="text" id="admin"  disabled name="admin" value="<%= admin %>" placeholder="<%=admin %>"/>
        <h4 class="erorr" id="adminErorr"></h4>

        <label class="tabletext" for="choose">Choose User</label>
        <input type="text" id="choose" disabled name="choose" />
        <h4 class="erorr" id="chooseErorr"></h4>

        <input id="registerbutton" type="submit" name="send"  />

                    <h1 id="test" name="test"> </h1>

    </form>



    <h3><%= sqlSelect%></h3>
    <h3><%= sqlUpdate %></h3>
    <h3><%= msg %></h3>

                <script type="text/javascript">
                    var pm = '<%= Session["admin"].ToString() %>';

                    window.onload = func1();


                    function func1() {

                        if (pm == "yes") {
                            console.log(pm);
                            document.getElementById('admin').removeAttribute('disabled');
                            document.getElementById('choose').removeAttribute('disabled');

                        }
                        else {
                            console.log('else');
                            document.getElementById('test').innerHTML = "No Admin Permission";

                        }
                    }

                </script>


</asp:Content>


