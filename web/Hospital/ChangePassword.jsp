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
                 String selu="select * from tbl_hospital where hospital_pswrd='"+request.getParameter("txtcurnt")+"' and hospital_id='"+session.getAttribute("hospitalid")+"'";
                ResultSet rsu=con.selectCommand(selu);
                System.out.println(selu);
            if(rsu.next())
            {
                String up="update tbl_hospital set hospital_pswrd='"+request.getParameter("txtnew")+"' where hospital_id='"+session.getAttribute("hospitalid")+"'";
                con.executeCommand(up);
                response.sendRedirect("changepassword.jsp");
            }
            else
            {
             %>
                <script type="text/javascript">
            alert("Password missmatches...");
            setTimeout(function() {
                window.location.href = 'changepassword.jsp';
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
    <br><br>
    <%@include file="Footer.jsp" %>
</html>