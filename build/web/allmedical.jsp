<%@page import="java.sql.*" %>
<%@include file="general2.jsp" %>
<center>
<h1>Medical Data</h1>
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
    String sql="select * from medicaldata ";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    
    //Fetch data
    ResultSet r1=p1.executeQuery();
    
    
    while(r1.next())
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
        <h3><%= a %></h3>
        <p>
           
            
           ownername : <%= b %><br/>
            licenseno :<%= c %><br/>
            address: <%= d %><br/>
            Contact : <%= e %><br/>
            Email: <%= f %><br/>
            
        </p>
        <hr/>
        <%
        
    }
        %>
        <style>
                
                
                
                p
                {
                   font-weight: bold;
                }


    h1
    {
                 padding-top: 15px;
                 font-family: serif;
                 font-weight: bold;
                 font-size: 40px;
    }
</style>
        
        <%@include file="general1.jsp" %>
        