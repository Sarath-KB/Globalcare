<%-- 
    Document   : user.jsp
    Created on : 8 Feb, 2022, 14:11:39 PM
    Author     : rinus
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../Assets/JQuery/jQuery.js"></script>
        <script>
            function getPlace(did)
                                            {
                                                   
                                                $.ajax({
                                                    
                                                    url: "../Assets/AjaxPages/AjaxPlace.jsp?did="+did,
                                                    success: function(result) {
                                                        $("#sclplace").html(result);
                                                    }});
                                            }
                                            
                                            function Checkemail()
                                            {
                                                var email=document.getElementById("txtemail").value;
                                                   
                                                $.ajax({
                                                    
                                                    url: "../Assets/AjaxPages/AjaxEmail.jsp?email="+email,
                                                    success: function(result) {
                                                        $("#result").html(result);
                                                    }});
                                            }
        </script>
        <script>
           
            function chkpwd(txtrp, txtp)
{
	if((txtrp.value)!=(txtp.value))
	{
		document.getElementById("pass").innerHTML = "<span style='color: red;'>Passwords Mismatch</span>";
	}
}

function checknum(elem)
{
	var numericExpression = /^[0-9]{8,10}$/;
	if(elem.value.match(numericExpression))
	{
		document.getElementById("contact").innerHTML = "";
		return true;
	}
	else
	{
		document.getElementById("contact").innerHTML = "<span style='color: red;'>Numbers Only Allowed</span>";
		elem.focus();
		return false;
	}
}



function emailval(elem)
{
	var emailexp=/^([a-zA-Z0-9.\_\-])+\@([a-zA-Z0-9.\_\-])+\.([a-zA-Z]{2,4})$/;
	if(elem.value.match(emailexp))
	{
		document.getElementById("content").innerHTML = "";
		return true;
	}
	else
	{
		
		document.getElementById("content").innerHTML ="<span style='color: red;'>Check Email Address Entered</span>";;
		elem.focus();
		return false;
	}
}
function nameval(elem)
{
	var emailexp=/^([A-Za-z ]*)$/;
	if(elem.value.match(emailexp))
	{
		document.getElementById("name").innerHTML = "";
		return true;
	}
	else
	{
		
		document.getElementById("name").innerHTML = "<span style='color: red;'>Alphabets Are Allowed</span>";
		elem.focus();
		return false;
	}
}

        
        </script>
        
    </head>
    <body>
       <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">User Registration</h1>
        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/useraction.jsp">
            <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                <tr><th>Name</th><td><input type="text" name="txtname" autocomplete="off" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$" required onchange="nameeval(this)"/>
                        <div id="name"></div></td>
                </tr>
                <tr><th>Email</th><td><input type="email"   name="txtemail" autocomplete="off"  id="txtemail" onchange="emailval(this)" required>
                        <div id="content"></div>
                       
                              
                    </td></tr>
                <tr><th>Contact</th><td><input type="tel" name="txtcontact" pattern="[7-9]{1}[0-9]{9}" 
                                                   title="Phone number with 7-9 and remaing 9 digit with 0-9" required onchange="checknum(this)"/></td></tr>
                <tr><th>Address</th><td><textarea name="txtaddr"></textarea></td></tr>
                 <tr><th>District</th><td><select name="slctDistrict" onchange="getPlace(this.value)">
                                        <option value=" ">--Select--</option>
                                        <%
                                        String sel="select *  from tbl_district";
                                        ResultSet rs=con.selectCommand(sel);
                                        while(rs.next())
                                        {
                                          %>
                                          <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                                          <%
                                        }
                                        %>
                         </select></td></tr>
                   </select></td></tr>
                 <tr><th>Place</th><td><select name="sclplace" id="sclplace">
                             <option value="select">--Select--</option>
                                       
                         </select></td></tr>
                 <tr><th>Image</th><td><input type="file" name="txtimg"></td></tr>
                 <tr><th>Gender</th>
                  <td><input type ="radio"  name="gender" value="male">Male
                  <input type ="radio"  name="gender" value="female">Female</td>
               </tr>
                
                <tr><th>Password</th><td><input type="password" name="txtpswrd" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required name="txt_pass" /></td></tr>
                <tr><th>Confirm Password</th><td><input type="password" name="txtpswrd1" autocomplete="off" required onchange="chkpwd(this,txtpswrd)"/>
                <div id="pass"></div></td></tr>
                <tr> <td colspan="2" align="center"><input type="submit" name="btnsave" value="save"><input type="submit" name="btncancel" value="Cancel"></td></tr>
            </table>
        </form>
   </div>
    </body>
     <br><br>
    <%@include file="Footer.jsp" %>
</html>
