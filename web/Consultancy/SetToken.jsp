<%-- 
    Document   : Settoken
    Created on : 18 Feb, 2022, 8:20:45 PM
    Author     : rinus
--%>
<%@page import="java.util.Random"%>
<%@include file="SessionValidator.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Token Page</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
            int randomNumber=0,count=0;
            String tokenNumber="";
            if(request.getParameter("btnsave")!=null)
            {
              count=Integer.parseInt(request.getParameter("txtcount"));
                for(int i=1;i<=count;i++)
                {
                    
                        Random r = new Random();//to generate random number
                        randomNumber  = r.nextInt(1111) + 999;//values between this are generated
                        tokenNumber="TID"+randomNumber;
                
                        String ins="insert into tbl_generatetoken(token_no,da_id)values('"+tokenNumber+"','"+request.getParameter("aid")+"')";
                        out.println(ins);
                        con.executeCommand(ins);
                    }  
                response.sendRedirect("Setdavailability.jsp");
            }
                
              
            %>
            <h1 align="center">Set Tokens</h1>
            <%
            
            String selu="select* from tbl_davailability d inner join tbl_doctors da on da.doctors_id=d.doctor_id where d.da_id='"+request.getParameter("aid")+"'";
            ResultSet rsAvailability=con.selectCommand(selu);
            if(rsAvailability.next()){
            %>
            
           
   
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <td>Doctor</td>
                    <td><%= rsAvailability.getString("doctors_name") %></td>
                </tr>
                <tr>
                    <td>Date</td>
                     <td><%= rsAvailability.getString("da_date") %></td>
                </tr>
                <tr>
                    <td>Start Time</td>
                    <td><%= rsAvailability.getString("da_fromtime") %></td>
                </tr>
                <tr>
                    <td> End Time</td>
                    <td><%= rsAvailability.getString("da_totime") %></td>
                </tr>
             
                <tr>
                    <td>Total Count</td>
                    <td><input type="text" name="txtcount"</td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btnsave" value="Generate Tokens"></td>
                </tr>
            
                
            </table>
        </form>
            <%
            }%>
            <br><br><br>
          
   </div>
    </body>
    <br>
            <br>
            <%@include file="Footer.jsp" %>
</html>
