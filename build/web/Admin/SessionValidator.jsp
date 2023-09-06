<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("adminid") == null)
        {
            response.sendRedirect("../");
        }
    %>