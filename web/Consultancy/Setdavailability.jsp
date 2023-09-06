<%-- 
    Document   : Setdavailability
    Created on : 18 Feb, 2022, 12:21:29 PM
    Author     : rinus
--%>
<%@include file="SessionValidator.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../Assets/JQuery/jQuery.js"></script>
        <script>
            function getDoctor(did)
                                            {
                                                   
                                                $.ajax({
                                                    
                                                    url: "../Assets/AjaxPages/AjaxDoctor.jsp?did="+did,
                                                    success: function(result) {
                                                        $("#scldoctor").html(result);
                                                    }});
                                            }
        </script>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br><br><br>
        <div id="tab">
         <%
           if(request.getParameter("btnsave")!=null)
            {
                String ins="insert into tbl_davailability(doctor_id,da_fromtime,da_totime,da_date,consultancy_id)values('"+request.getParameter("scldoctor")+"','"+request.getParameter("txttime1")+"','"+request.getParameter("txttime")+"','"+request.getParameter("txtdate")+"','"+session.getAttribute("consultancyid")+"')";
                con.executeCommand(ins);
               
                response.sendRedirect("Setdavailability.jsp");
                
            }
           %>
        <h1 align="center">Doctors Availability</h1>
        <form method="post" >
            <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                 <tr><th>Department</th><td><select name="scldept" onchange="getDoctor(this.value)">
                                        <option value=" ">--Select--</option>
                                        <%
                                        String sel="select *  from tbl_department";
                                        ResultSet rs=con.selectCommand(sel);
                                        while(rs.next())
                                        {
                                          %>
                                          <option value="<%=rs.getString("dept_id")%>"><%=rs.getString("dept_name")%></option>
                                          <%
                                        }
                                        %>
                         </select></td></tr>
                   </select></td></tr>
                 <tr><th>Doctor</th><td><select name="scldoctor" id="scldoctor">
                             <option value="select">--Select--</option>
                                       
                         </select></td></tr>
                 <tr><th>Date</th><td><input type="date" name="txtdate"></td></tr>
                 <tr><th>From time</th><td><input type="time" name="txttime1"></td></tr>
                 <tr><th>To time</th><td><input type="time" name="txttime"></td></tr>
                 
                <tr> <td colspan="2" align="center"><input type="submit" name="btnsave" value="save"><input type="submit" name="btncancel" value="Cancel"></td></tr>
            </table>
                         <br><br>
                             
                         <table border="1" cellpadding="10"></table>
                                         <h1 align="center">Doctor Availability List</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <th>Sl.No</th>
                    <th>Doctor</th>
                    <th>From Time</th>
                    <th>To Time</th> 
                    <th>Date</th>
                </tr>
                 <%
                                                       String selu="select* from tbl_davailability d inner join tbl_doctors da on da.doctors_id=d.doctor_id where consultancy_id='"+session.getAttribute("consultancyid")+"'";
                                                        ResultSet ks=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ks.next())
                                                         {
                                                           i++;
           
                                                      %>
                     
                                                       <tr>
                                                        <td><%=i%></td>
                                                        <td><%=ks.getString("doctors_name")%></td>
                                                           <td><%=ks.getString("da_fromtime")%></td>
                                                           <td><%=ks.getString("da_totime")%></td>
                                                           <td><%=ks.getString("da_date")%></td>
                                                           <td><a href="SetToken.jsp?aid=<%=ks.getString("da_id")%>">Set Tokens</a></td>
                                                          
                   
                                                   <%
                                                       }
                                                   %>
            </table>
        </form>
    </div>
    </body>
    <br>
            <br>
            <%@include file="Footer.jsp" %>
</html>
