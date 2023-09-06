<%-- 
    Document   : Viewdoctor
    Created on : 24 Feb, 2022, 10:35:08 PM
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
        <title>Doctors View Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <form method="post">
            <table align="center" cellpadding="10">
                <tr><th>Department</th><td><select name="slctdept" onchange="getDoctor(this.value)">
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
                         </select>
<th align="center" colspan="2"><input type="submit" name="txtsearch" value="Search">
    </th></tr>
            </table>
                         <hr>
                         <div id="search">
              <table border="0" cellpadding="10" align="center">
               <tr>
                 
                 <%
                                                       String selu="select * from tbl_doctors doc inner join tbl_department dept on doc.department_id=dept.dept_id";
                                                        ResultSet ls=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ls.next())
                                                         {
                                                           i++;
                                                           
                                                      %>
                 
                 
                     
                                                      <td colspan="2"><p style="text-align:center;border:1px solid #999;margin:22px;padding:10px" ><img src="../Assets/photo/<%=ls.getString("doctors_photo")%>" width="150" height="150"><br><br>
                                                          <%=ls.getString("doctors_name")%><br><br>
                                                          <%=ls.getString("doctors_contact")%><br><br>
                                                          <%=ls.getString("doctors_gender")%><br><br>
                                                          <%=ls.getString("dept_name")%><br><br>
                                                          <%=ls.getString("doctors_qualification")%><br><br>
                                                          <a href="Viewavailability.jsp?doid=<%=ls.getString("doctors_id")%>"><font color="Blue">View Availability</font></a></p></td>
                                                          
                                                    
                   
                                                   <%
                                                   if(i==4){
                                                       out.println("</tr>");
                                                       
                                                       i=0;
                                                        out.println("<tr>");
                                                       }
                                                   }
                                                   %>
             </tr>
            

              </table>
                         </div>
        </form>
    </div>
  </body>
   <script src="../Assets/JQuery/jQuery.js"></script>
      <script>
          
                                            function getDoctor(did)
                                            {
                                                
//                                                   var dis=document.getElementById("slctDistrict").value;
//                                                   var pl=document.getElementById("sclplace").value;
                                                   //alert(dis);
                                                   //alert(pl);
                                                $.ajax({
                                                    
                                                    url: "../Assets/AjaxPages/AjaxDoc.jsp?dis="+did,
                                                    success: function(result) {
                                                        $("#search").html(result);
                                                    }});
                                            }
                                            
        </script>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
