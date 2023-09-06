<%-- 
    Document   : hospitalreg
    Created on : 8 Feb, 2022, 3:35:26 PM
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
        </script>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">Hospital Registration</h1>
        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/hospitalaction.jsp">
            <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                <tr><th>Name</th><td><input type="text" name="txtname" autocomplete="off" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"/></td></tr>
                <tr><th>Contact</th><td><input type="tel" name="txtcontact" pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaing 9 digit with 0-9" autocomplete="off"></td></tr>
                <tr><th>Email</th><td><input type="email"   name="txtemail" autocomplete="off"> </td></tr>
                <tr><th>Address</th><td><textarea name="txtaddr"></textarea></td></tr>
                <tr><th>Hospitaltype</th><td><select name="slctdept">
                                        <option value="select">--Select--</option>
                                        <%
                                        String sel1="select *  from tbl_hospitaltype";
                                        ResultSet ls=con.selectCommand(sel1);
                                        while(ls.next())
                                        {
                                          %>
                                          <option value="<%=ls.getString("hospitaltype_id")%>"><%=ls.getString("hospitaltype_name")%></option>
                                          <%
                                        }
                                        %>
                                         </select></td>
                            </tr>
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
                 <tr><th>Logo</th><td><input type="file" name="txtimg"></td></tr>
                 <tr><th>Proof</th><td><input type="file" name="txtproof"></td></tr>
                <tr><th>Password</th><td><input type="password" name="txtpswrd" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required name="txt_pass" /></td></tr>
                <tr><th>Confirm Password</th><td><input type="password" name="txtpswrd1" autocomplete="off"/></td></tr>
                <tr> <td colspan="2" align="center"><input type="submit" name="btnsave" value="save"><input type="submit" name="btncancel" value="Cancel"></td></tr>
            </table>
        </form>
        </div>
    </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
