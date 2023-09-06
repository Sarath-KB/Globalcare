<%-- 
    Document   : place.jsp
    Created on : 25 Jan, 2022, 3:25:43 PM
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
        <title>Place registration</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
            if(request.getParameter("btn_save")!=null)
            {
                   String selc="select * from tbl_place where place_name='"+request.getParameter("txtplace")+"'";
                   ResultSet rsc=con.selectCommand(selc);
                   if(rsc.next()){
                       %> 
        <script type="text/javascript">
            alert("Already Exist With Same Name");
            setTimeout(function() {
                window.location.href = 'Place.jsp';
            }, 40);//40millisecend it go to next page
        </script>
        <%
                   }
                   else
                  {
                String ins="insert into tbl_place(place_name,district_id)values('"+request.getParameter("txtplace")+"','"+request.getParameter("slctDistrict")+"')";
               
                con.executeCommand(ins);
                }
                  
            }
             if(request.getParameter("did")!=null)
           {
               String del="delete from tbl_place where place_id=('"+request.getParameter("did")+"')";
               con.executeCommand(del);
               
                response.sendRedirect("Place.jsp");
                
           }
        %>
        <div id="tab">
        <h3 align="center">PLACE REGISTRATION</h3>
        <form method="post">
            <table border="1" align="center">
                            <tr><th>District</td><td><select name="slctDistrict">
                                        <option value="select">--Select--</option>
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
                                         </select>
                            </tr>
                            <tr>
                                <th>Place</td><td><input type="text" name="txtplace" required></td>
                            </tr>
                            <tr><td colspan="2" align="center"><input type="submit" name="btn_save" value="Save">
                                <input type="submit" name="btn_cancel" value="Cancel"</td>
                       
            </table>
                                         <br><br><br>
                                         <table border="1" align="center">
                                             <tr><th>Sl.no</th>
                                                 <th>Place</th>
                                                 <th>District</th>
                                                 <th colspan="2">Action</th>
                                             </tr>
                                             <%
                                        String sel1="select * from tbl_place inner join tbl_district  on  tbl_district.district_id=tbl_place.district_id ";
                                        ResultSet ls=con.selectCommand(sel1);
                                          int i=0;
                                          while(ls.next())
                                           {
                                             i++;
           
                                             %>
                    
                                              <tr>
                                              <td><%=i%></td>
                                              <td><%=ls.getString("place_name")%></td>  
                                               <td><%=ls.getString("district_name")%></td>  
                                               <td><a href="Place.jsp?did=<%=ls.getString("place_id")%>">Delete</a></td>
                                               
                                                </tr>
                   
                                            <%
                                               }
                                             %>
                                         </table>
        </form>
          </div>
    </body>
    <%@include file="Footer.jsp" %>
</html>
