<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("hospitalid") == null)
        {
            response.sendRedirect("../");
        }
    %>