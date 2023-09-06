<%-- 
    Document   : Doctorsreg
    Created on : 10 Feb, 2022, 12:02:16 PM
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
        <title>Doctors registration Page</title>
         <script src="../Assets/JQuery/jQuery.js"></script>
        <script>
            function getPlace(did)
                                            {
                                                   
                                                $.ajax({
                                                    
                                                    url: "../Assets/AjaxPages/AjaxPlace.jsp?did="+did,
                                                    success: function(result) {
                                                        $("#sclplace").html(result);
                                                    }});
                                            }
      </script>
                                 
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
       
                 if(request.getParameter("did")!=null)
           {
               String del="delete from tbl_doctors where doctors_id=('"+request.getParameter("did")+"')";
               con.executeCommand(del);
               
                response.sendRedirect("DoctorRegistration.jsp");
                
           }
         
        %>
        <h1 align="center">
            Doctors Registration 
        </h1>
         <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/doctoraction.jsp">
            <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                <tr><th>Name</th><td><input type="text" name="txtname" autocomplete="off" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"/></td></tr>
                 <tr><th>Contact</th><td><input type="tel" name="txtcontact" pattern="[7-9]{1}[0-9]{9}" 
                                                   title="Phone number with 7-9 and remaing 9 digit with 0-9"/></td></tr>
                 <tr><th>Email</th><td><input type="email"   name="txtemail" autocomplete="off"></td></tr>
                 <tr><th>Gender</th>
                  <td><input type ="radio"  name="gender" value="male">Male
                  <input type ="radio"  name="gender" value="female">Female</td>
               </tr>
                 <tr><th>Address</th><td><textarea name="txtaddr"></textarea></td></tr>
                 <tr><th>District</th><td><select name="slctDistrict" onchange="getPlace(this.value)">
                                        <option value=" ">--Select--</option>
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
                         </select></td></tr>
                   </select></td></tr>
                 <tr><th>Place</th><td><select name="sclplace" id="sclplace">
                             <option value="select">--Select--</option>
                                       
                         </select></td></tr>
                   <tr><th>Photo</th><td><input type="file" name="txtimg"></td></tr>
                   <tr><th>Department</td><td><select name="slctDept">
                                        <option value="select">--Select--</option>
                                        <%
                                        String sel1="select *  from tbl_department";
                                        ResultSet ls=con.selectCommand(sel1);
                                        while(ls.next())
                                        {
                                          %>
                                          <option value="<%=ls.getString("dept_id")%>"><%=ls.getString("dept_name")%></option>
                                          <%
                                        }
                                        %>
                                         </select>
                            </tr>
                        <tr><th>Qualification</th><td><textarea name="txtaddr"></textarea></td></tr>
                        <tr><th>Password</th><td><input type="password" name="txtpswrd"></td></tr>
                         <tr><th>Confirm Password</th><td><input type="password" name="txtpswrd"></td></tr>
                         <tr><th colspan="2" align="center"><input type="submit" name="btnsave" value="Save"></th></tr>
                        </table>
                                         <table border="1" cellpadding="10"></table>
                                         <h1 align="center">Doctors List</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <th>Sl.No</th>
                    <th> Name</th>
                    <th>Contact</th>
                    <th>Email</th>
                    <th>Address</th>
                      <th>Department</th>
                        <th>Qualification</th>
                        <th colspan="2"> Action</th>
                   
                </tr>
                 <%
                                                       String selu="select* from tbl_doctors d inner join tbl_department dp on dp.dept_id=d.department_id where hospital_id='"+session.getAttribute("hospitalid")+"'";
                                                        ResultSet ks=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ks.next())
                                                         {
                                                           i++;
           
                                                      %>
                     
                                                       <tr>
                                                        <td><%=i%></td>
                                                        <td><%=ks.getString("doctors_name")%></td>
                                                        <td><%=ks.getString("doctors_contact")%></td>
                                                         <td><%=ks.getString("doctors_email")%></td>
                                                          <td><%=ks.getString("doctors_address")%></td>
                                                           <td><%=ks.getString("dept_name")%></td>
                                                           <td><%=ks.getString("doctors_address")%></td>
                                                           <td><a href="DoctorRegistration.jsp?did=<%=ks.getString("doctors_id")%>"><font color="Blue">Delete</font></a></td></tr>
                   
                                                   <%
                                                       }
                                                   %>
            </table>
 
         </form>
 </div>
    </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
