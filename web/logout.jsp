<%@include file="general2.jsp" %>

<%
    session=request.getSession(false);//false-open only existing session
    if(session==null)
    {
        response.sendRedirect("Login.jsp");
    }
    else
    {
        try
        {
            //remove session attributes
            session.removeAttribute("email");
            session.removeAttribute("usertype");
            session.invalidate();
            response.sendRedirect("Login.jsp");
        }
        catch(NullPointerException e)
        {
            response.sendRedirect("Login.jsp");
        }
    }

%>
<%@include file="general1.jsp" %>
