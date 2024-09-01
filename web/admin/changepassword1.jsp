<%@include file="admin.jsp" %>
<%@page import="java.sql.*" %>
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

<h1>Edit and Save</h1>
</center>
<%
    //Receive form data
   String new_pass,old_pass,confirm_pass;
    new_pass=request.getParameter("t1");
    old_pass=request.getParameter("t2");
    confirm_pass=request.getParameter("t3");
    
    
    //load driver for mysql-connetivity with java
    Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    
    //Create sql command
    String sql="update logindata set password=? where email=? and password=?";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    
    //Replace ? with data
    
    p1.setString(1, new_pass);
    p1.setString(2, e1);
    p1.setString(3, old_pass);
    
    
    
    //send data to table
    int a=p1.executeUpdate();
    String msg="";
    if(a==1)
    {
        msg="Data is saved successfully";
    }
    else
    {
        msg="Error : cannot save data";
    }
    
%>
<center>
    <h3><%=msg%></h3>
    <h3><a href="../Login.jsp">Continue</a></h3> 
</center>
<style>
            h1
{
    padding-top: 17px;
    font-family:serif;
    font-weight: bold;
}

h3{
    padding-top: 5px;
    font-weight: bold;
    font-family: serif;
    font-size: 20px;
    
}
             </style>
             <%@include file="admin1.jsp" %>
