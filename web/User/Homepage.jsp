<%-- 
    Document   : Homepage
    Created on : 9 Feb, 2022, 11:47:51 AM
    Author     : rinus
--%>
<%@include file="SessionValidator.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Homepage</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <a href="myprofile.jsp">Myprofile</a><br><br>
        <a href="editprofile.jsp">Editprofile</a><br><br>
        <a href="changepassword.jsp">Change Password</a><br><br>
        <a href="Searchhospital.jsp">Search Hospital</a><br><br>
        <a href="Complaint.jsp">Complaint</a><br><br>
        <a href="ViewBookedSlotDetails.jsp">Booked Slot Details</a><br><br>
        <a href="Feedback.jsp">Feedbacks</a>
   </body>
</div>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
