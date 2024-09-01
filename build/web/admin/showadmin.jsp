
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page import="medicalorg.adminmodel" %>
<%@include file="admin.jsp" %>

<%
    String e1="",ut="";
//open existring session
    session=request.getSession(false);
    if(session==null)
    {
        response.sendRedirect("../autherror.jsp");
    }
    else
    {
        try
        {
            e1=session.getAttribute("email").toString();
            ut=session.getAttribute("usertype").toString();
            if(ut.equalsIgnoreCase("admin")==false)
            {
                response.sendRedirect("../autherror.jsp");
            }
        }
        catch(NullPointerException e)
        {
            response.sendRedirect("../autherror.jsp");
        }
    }
%>
<center>
<h2>Show Admin details</h2>
</center>
<%
    ArrayList<adminmodel> lst=adminmodel.getAdmins();
    for(int i=0; i<lst.size(); i++)
    {
        adminmodel adm=lst.get(i);
        %>
        <h3><%= adm.getName() %></h3>
        <p>
            Address : <%= adm.getAddress() %><br/>
            Contact : <%= adm.getContact() %><br/>
            Email : <%= adm.getEmail() %>
        </p>
       
        </center>
            <style>
                h2
                {
                 padding-top: 15px;
                 font-family: serif;
                 font-weight: bold;
                 font-size: 40px;
                }
                p
                {
                    font-weight: bold;
                    
                }
            </style>
        
        <%
    }
    
%>
<%@include file="admin1.jsp" %>
