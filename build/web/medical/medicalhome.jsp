<%@include file="medical.jsp" %>

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
            if(ut.equalsIgnoreCase("medical")==false)
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
<h1>Medical home</h1>
<h2>Medical profile</h2>
</center>
<%
    //load driver for mysql-connetivity with java
    Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    
    //Create sql command
    String sql="select * from medicaldata where email=?";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setString(1,e1);
    //Fetch data
    ResultSet r1=p1.executeQuery();
    
    
    if(r1.next())
    {
        String a,b,c,d,e,f;
        a=r1.getString("name");
        b=r1.getString("ownername");
        c=r1.getString("licenseno");
        d=r1.getString("address");
        e=r1.getString("contact");
        f=r1.getString("email");
        
        %>
        <center>
        <p>
           Name: <%= a %><br/>
           ownername : <%= b %><br/>
            licenseno :<%= c %><br/>
            Address: <%= d %><br/>
            Contact : <%= e %><br/>
            Email:<%= f %>
            
        </p>
        
        <form method="post" action="editprofile.jsp">
            <input type="hidden" name="H1" value="<%= f%>" />
            <input type="submit" class="k1" name="B1" value="Edit" />
        </form>
        </center>
            <%
    }
            %>
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
h2
    {
                 padding-top: 15px;
                 font-family: serif;
                 font-weight: bold;
                 font-size: 40px;
    }
    h1
    {
                 padding-top: 15px;
                 font-family: serif;
                 font-weight: bold;
                 font-size: 50px;
    }
</style>
        
        <%
    
    
%>
<%@include file="medical1.jsp"%>