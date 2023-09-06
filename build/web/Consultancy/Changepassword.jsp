<%-- 
    Document   : changepassword
    Created on : 10 Feb, 2022, 9:42:53 AM
    Author     : rinus
--%>
<%@include file="SessionValidator.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
            if(request.getParameter("btnedit")!=null){
                 String selu="select * from tbl_doctors where doctors_pswrd='"+request.getParameter("txtcurnt")+"' and doctors_id='"+session.getAttribute("doctorid")+"'";
                ResultSet rsu=con.selectCommand(selu);
                System.out.println(selu);
            if(rsu.next())
            {
                String up="update tbl_doctors set doctors_pswrd='"+request.getParameter("txtnew")+"' where doctors_id='"+session.getAttribute("doctorid")+"'";
                con.executeCommand(up);
                response.sendRedirect("Changepassword.jsp");
            }
            else
            {
             %>
                <script type="text/javascript">
            alert("Password missmatches...");
            setTimeout(function() {
                window.location.href = 'Changepassword.jsp';
            }, 40);//40millisecend it go to next page
        </script>
                <%
            }}
            %>
            
        <h1 align="center">Change Password</h1>
        <form method="post" >
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <th>Current Password</th><td><input type="password" name="txtcurnt"></td></tr>
                <tr> <th>New Password</th><td><input type="password" name="txtnew"></td></tr>
                <tr> <th>Confirm Password</th><td><input type="password" name="txtconfirm"></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" name="btnedit" value="Change"></td>
                         
                </tr>
            </table>
        </form>
        </div>
    </body>
    <br>
            <br>
            <%@include file="Footer.jsp" %>
</html>