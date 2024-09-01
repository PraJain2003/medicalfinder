
<%@page import="java.util.ArrayList"%>
<%@include file="admin.jsp" %>
<%@page import="medicalorg.medicalmodel"%>
<%@page import="java.sql.*"%>
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
<h1>Medical</h1>
</center>
<%
    ArrayList<medicalmodel> lst=medicalmodel.getMedicals();
    for(int i=0; i<lst.size(); i++)
    {
        medicalmodel med=lst.get(i);
        %>
        <center>
        <h3><%= med.getName() %></h3>
        <p>
            Address : <%= med.getAddress() %><br/>
            Contact : <%= med.getContact() %><br/>
            Email : <%= med.getEmail() %><br/>
            LicNo:<%= med.getLicno()%><br/>
            Owner:<%= med.getOwnername()%><br/>
        </p>
        </center>
    <center>
        <form method="post" action="editmedical.jsp">
            <input type="hidden" name="H1" value="<%= med.getEmail()%>" />
            <input type="submit" name="B1" class="btn1" value="Edit" />
        </form>
            <form method="post" action="deletemedical.jsp">
            <input type="hidden" name="H1" value="<%= med.getEmail() %>" />
            <input type="submit" name="B1"  class="btn1" value="Delete" />
        </form>
            </center>
            <style>
            h1
{
    padding-top: 17px;
    font-family:serif;
    font-weight: bold;
}
p
{
    padding-top: 5px;
    font-weight: bold;
    font-family: serif;
    font-size: 20px;
}
h3{
    padding-top: 5px;
    font-weight: bold;
    font-family: serif;
    font-size: 20px;
    
}
.btn1
{
     height:50px;
    width:100px;
    color:#000;
    background:#ffffff;
    border-radius:20px;
    font-size:24px;
    cursor:pointer;
    border:2px solid #000;
}
.btn1:hover
{
    background: #009966;
}
        </style>
        <%
    }
        %>
<%@include file="admin1.jsp" %>
