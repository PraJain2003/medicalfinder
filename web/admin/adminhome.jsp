
<%@page import="java.sql.*" %>
<%@page import="medicalorg.adminmodel"%>
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
    <h1>Admin home</h1>
<h2>Admin profile</h2>
</center>
<%
    adminmodel ad=new adminmodel();
    ad.setEmail(e1);
    adminmodel adm=ad.getAdmin();
    if(adm!=null)
    {
        %> 
        <center>
         <h3><%= adm.getEmail() %></h3>
        <p>
            Name : <%= adm.getName() %><br/>
            Address : <%= adm.getAddress() %><br/>
            Contact : <%= adm.getContact() %><br/>
            

        </p>
        </center>
        <%
    }
    else
    {
        %>
        <h3>No profile found</h3>
        <%
    }
        %>
        <center>
        <form method="post" action="editprofile.jsp">
            <input type="hidden" name="H1" value="<%= adm.getEmail() %>" />
            <input type="submit" name="B1" class="k1" value="Edit" />
        </form>
</center>
            <style>
                p
                {
                   font-weight: bold;
                }
.k1
{
    height:50px;
    width:90px;
    color:#000;
    background:#ffffff;
    border-radius:20px;
    font-size:30px;
    cursor:pointer;
    border:2px solid #000;

}   
.k1:hover
{
    background: #009966;
}


              
h1
{
   padding-top: 15px;
    font-family: serif;
   font-weight: bold;
   font-size: 40px; 
}
h2{
    padding-top: 15px;
                 font-family: serif;
                 font-weight: bold;
                 font-size: 40px; 
}
</style>
        
       
<%@include file="admin1.jsp" %>


