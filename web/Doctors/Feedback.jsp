<%-- 
    Document   : Feedback
    Created on : 7 May, 2022, 2:21:18 PM
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
        <title>Feedback Page</title>
    </head>
    <body>
          <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
            if(request.getParameter("btnsubmit")!=null)
            {
                {
                String ins="insert into tbl_feedback(feedback_description,feedback_date,doctors_id)values('"+request.getParameter("txtfdbk")+"',curdate(),'"+session.getAttribute("doctorid")+"')"; 
               out.println(ins);
                con.executeCommand(ins);
                }
            }
            %>
        <h1 align="center">FeedBacks</h1>
        <form method="post">
            <table border="1" align="center">
                <tr>
                   
                    <td><textarea name="txtfdbk"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="btnsubmit" value="Submit"></td>
                </tr>
            </table>
       
        </form>
         </div>s
    </body>
     <br><br>
    <%@include file="Footer.jsp" %>
</html>
