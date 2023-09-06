<%-- 
    Document   : Searchhospital
    Created on : 24 Feb, 2022, 9:07:54 PM
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
        <title>Hospital Search</title>
        <script src="../Assets/JQuery/jQuery.js"></script>
        <script>
            function getPlace(did)
                                            {
                                                   
                                                $.ajax({
                                                    
                                                    url: "../Assets/AjaxPages/AjaxPlace.jsp?did="+did,
                                                    success: function(result) {
                                                        $("#sclplace").html(result);
                                                        
                                                    }});
                                                getData()
                                                    
                                            }
                                            function getData()
                                            {
                                                
                                                   var dis=document.getElementById("slctDistrict").value;
                                                   var pl=document.getElementById("sclplace").value;
                                                   //alert(dis);
                                                   //alert(pl);
                                                $.ajax({
                                                    
                                                    url: "../Assets/AjaxPages/AjaxData.jsp?dis="+dis+"&pl="+pl,
                                                    success: function(result) {
                                                        $("#search").html(result);
                                                    }});
                                            }
                                            
        </script>
    </head>
    <body>
    <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <form method="post">
            <table border="2" align="center" cellpadding="10" style="border-collapse: collapse">
                <tr><th>District</th><td><select name="slctDistrict"  id="slctDistrict"onchange="getPlace(this.value)">
                                        <option value="">--Select--</option>
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
                         </select></td>
                         <th>Place</th><td><select name="sclplace" id="sclplace" onchange="getData()">
                             <option value="">--Select--</option>
                                       
                     </select></td>
                    </tr>
                
            </table>
                         <br>
                         <br>
                
                         <div id="search">  
             <table  cellpadding="40" align="center">
                 <tr>
                 
                 <%
                                                       String selu="select * from tbl_hospital h inner join tbl_place p on p.place_id=h.place_id inner join tbl_district d on d.district_id=p.district_id";
                                                        ResultSet ls=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ls.next())
                                                         {
                                                           i++;
                                                           
                                                      %>
                 
                 
                     
                                                      <td colspan="2"><p style="text-align:center;border:1px solid #999;margin:22px;padding:10px" ><img src="../Assets/photo/<%=ls.getString("hospital_logo")%>" width="150" height="150"><br><br>
                                                          <%=ls.getString("hospital_name")%><br><br>
                                                          <%=ls.getString("hospital_contact")%><br><br>
                                                          <a href="Viewdoctor.jsp?hosid=<%=ls.getString("hospital_id")%>"><font color="blue">View Doctor</font></a></p></td>
                                                      
                                                    
                   
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
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
