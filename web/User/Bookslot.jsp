<%-- 
    Document   : Bookslot
    Created on : 5 Mar, 2022, 3:41:56 PM
    Author     : rinus
--%>
<%@include file="SessionValidator.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slot Booking</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center"> Slot Booking</h1>
        <form method="post">
            <table border="0" style="border-collapse:collapse;" cellpadding="10" align="center">
                <tr>
             
                 <%
                                                       String selu="select * from tbl_generatetoken where da_id='"+request.getParameter("daid")+"'";
                                                      //out.print(selu);
                                                        ResultSet ls=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ls.next())
                                                         {
                                                           i++;
                                                          
                                                           if(ls.getString("token_bookstatus").equals("0")){
                                                              // out.print("Not Booked");
                %>
                <td colspan="2"><p style="text-align:center;margin:22px;padding:10px;background-color:red;" ><a href="ConsultancyDetails.jsp?tokenid=<%=ls.getString("gtoken_id")%>" style="text-decoration:none;"><%=ls.getString("token_no")%></a></p></td>
                <%
                                                           }else{
                                                                  out.print("Booked");
                %>
                <td colspan="2" style="color:red;"><p style="text-align:center;border:1px solid #999;margin:22px;padding:10px" ><%=ls.getString("token_no")%></p></td>
                <%
                                                           }
                                                   if(i==5){
                                                       out.println("</tr>");
                                                       
                                                       i=0;
                                                        out.println("<tr>");
                                                       }
                                                   }
                                                   %>
                </tr>
            </table>
        </form>
        </div>
  </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
