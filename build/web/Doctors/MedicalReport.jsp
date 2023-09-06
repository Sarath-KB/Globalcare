<%-- 
    Document   : MedicalReport
    Created on : 12 Mar, 2022, 3:09:19 PM
    Author     : rinus
--%>
<%
session.setAttribute("consultancyid",request.getParameter("cid"));
%>
<%@include file="SessionValidator.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medical Report</title>
    </head>
    <body>
          <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">Medical Report</h1>
        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/MedicalReportAction.jsp">>
            <table border="1" align="center" cellpadding="10">
                <tr>
                    <th>Title</th>
                    <td><input type="text" name="txttitle"></td>
                </tr>
                <tr>
                    <th>Remarks</th>
                    <td><textarea name="txtrmrk"></textarea></td>
                </tr>
                <tr>
                    <th>Medicine</th>
                    <td><input type="text" name="txtmedicine"></td>
                </tr>
                <tr>
                    <th>Is Major</th>
                    <td><input type ="radio"  name="maj" value="yes">Yes
                  <input type ="radio"  name="maj" value="No">No</td>
                </tr>
                <tr>
                    <th>Major Details</th>
                    <td><textarea name="txtdetil"></textarea></td>
                    
                </tr>
                <tr>
                    <th>Report</th>
                    <td><input type="file" name="txtfile"></td>
                </tr>
                <tr>
                    <th colspan="2" align="center"><input type="submit" name="btnsave" value="Save"></th>
                </tr>
                
            </table>
        </form>
        </div>
      
    </body>
     <br><br>
    <%@include file="Footer.jsp" %>
</html>
