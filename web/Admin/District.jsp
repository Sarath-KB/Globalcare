<%-- 
    Document   : district.jsp
    Created on : 25 Jan, 2022, 10:00:08 AM
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
        <title>District Registration</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%            String eid = "", ename = "";
            if (request.getParameter("btnsave") != null) {
                if (!request.getParameter("texthidden").equals("")) {
                    String up = "Update tbl_district set district_name='" + request.getParameter("txt1") + "' where district_id='" + request.getParameter("texthidden") + "'";
                    con.executeCommand(up);
                    response.sendRedirect("district.jsp");
                } else {
                    String selc = "select * from tbl_district where district_name='" + request.getParameter("txt1") + "'";
                    ResultSet rsc = con.selectCommand(selc);
                    if (rsc.next()) {
        %> 
        <script type="text/javascript">
            alert("Already Exist With Same Name");
            setTimeout(function() {
                window.location.href = 'district.jsp';
            }, 40);//40millisecend it go to next page
        </script>
        <%
                    } else {
                        String ins = "insert into tbl_district(district_name)values('" + request.getParameter("txt1") + "')";
                        con.executeCommand(ins);
                    }
                }
            }
            if (request.getParameter("did") != null) {
                String del = "delete from tbl_district where district_id=('" + request.getParameter("did") + "')";
                con.executeCommand(del);

                response.sendRedirect("district.jsp");

            }
            if (request.getParameter("eid") != null) {
                String sel1 = "select * from tbl_district where district_id=('" + request.getParameter("eid") + "')";
                ResultSet rs1 = con.selectCommand(sel1);

                if (rs1.next()) {
                    eid = rs1.getString("district_id");
                    ename = rs1.getString("district_name");

                }

            }
        %>
        <div id="tab">
            <h3 align="center">DISTRICT REGISTRATION</h3>
            <form method="post">
                <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                    <input type="hidden" name="texthidden" value="<%=eid%>">
                    <tr><th>District Name</th><th><input type="text" name="txt1" autocomplete="off" value="<%=ename%>" required></td></tr>
                    <tr><td colspan="2" align="center"><input type="submit" name="btnsave" value="save"><input type="submit" name="btncancel" value="Cancel"></td></tr>
                </table><br><br>
                <table border="1" align="center" cellpadding="10">
                    <tr>
                        <th>Sl.No</th>
                        <th>District</th>
                        <th colspan="2"> Action</th>
                    </tr>
                    <%
                        String sel = "select * from tbl_district";
                        ResultSet rs = con.selectCommand(sel);

                        int i = 0;
                        while (rs.next()) {

                            i++;

                    %>
                    <tr>
                        <td><%=i%></td>
                        <td><%=rs.getString("district_name")%></td>
                        <td><a href="district.jsp?did=<%=rs.getString("district_id")%>">Delete</a></td>
                        <td><a href="district.jsp?eid=<%=rs.getString("district_id")%>">Edit</a></td>

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
