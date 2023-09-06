<%-- 
    Document   : TrackMedicalHistory
    Created on : 18 Mar, 2022, 11:53:37 AM
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
        <title>Track Medical History</title>
    </head>
    <body>
          <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
      
        <h1 align="center">Track Medical History</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr><td><input type="text" name="txtpid"></td>
                    <td><input type="submit" name="btn_save" value="TrackMedicalHistory" autocomplete="off"></td>
                </tr>
            </table><br><br><br>
            <table border="1" align="center" cellpadding="10">
                 <tr>
                    <td>Title</td>
                    <td>Hospital Name</td>
                    <td>Doctors Name</td>
                    <td>Remark</td>
                    <td>Medicine</td>
                    <td>Is Major</td>
                    <td>Report</td>
                </tr>
              <%
       if(request.getParameter("btn_save")!=null)
        {
            String MajorStatus="";
            String sel="select * from tbl_medicalreport mr inner join tbl_cdetails cd on mr.cd_id=cd.cd_id inner join tbl_generatetoken gt on cd.gtoken_id=gt.gtoken_id inner join tbl_davailability da on gt.da_id=da.da_id inner join tbl_doctors doc on da.doctor_id=doc.doctors_id inner join tbl_consultancy con on da.consultancy_id=con.consultancy_id inner join tbl_hospital hos on con.hospital_id=hos.hospital_id inner join tbl_user u on cd.user_id=u.user_id where user_pid='"+request.getParameter("txtpid")+"'";
           //out.print(sel);
           ResultSet ks=con.selectCommand(sel);
            int i=0;
            while(ks.next())
            {
                MajorStatus=ks.getString("mr_ismajor");
                i++;
                if(MajorStatus.equals("yes")){
            
        %>
        <tr style="background-color:#ff3366;"> 
                            <td><%=ks.getString("mr_title")%></td>
                            <td><%=ks.getString("hospital_name")%></td>
                            <td><%=ks.getString("doctors_name")%></td>
                            <td><%=ks.getString("mr_remark")%></td>
                            <td><%=ks.getString("mr_medicine")%></td>
                            <td><%=ks.getString("mr_ismajor")%></td>
                            <td><a href="../Assets/photo/<%=ks.getString("mr_report")%>" download>Download</a></td>
        </tr>
        <%
            }else{
                    
        %>
             <tr> 
                            <td><%=ks.getString("mr_title")%></td>
                            <td><%=ks.getString("hospital_name")%></td>
                            <td><%=ks.getString("doctors_name")%></td>
                            <td><%=ks.getString("mr_remark")%></td>
                            <td><%=ks.getString("mr_medicine")%></td>
                            <td><%=ks.getString("mr_ismajor")%></td>
                            <td><a href="../Assets/photo/<%=ks.getString("mr_report")%>" download>Download</a></td>
            </tr>       
        <%            
                    
                }
                }
        }
                %>
       
            </table>
        </form>
        </div>
     
        
    </body>
     <br><br>
    <%@include file="Footer.jsp" %>
</html>
