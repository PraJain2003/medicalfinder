<%@include file="medical.jsp" %>
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
<h1>Available Medicine</h1>

</center>
<%
    Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    //load driver for mysql-connectivity with java

    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    
    //Create sql command
    String sql="select * from medicinedata where email_medical=?";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setString(1, e1);
    //Fetch data
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String a,b,c,d,e,f;
        a=r1.getString("med_name");
        b=r1.getString("med_type");
        c=r1.getString("company");
        d=r1.getString("licno");
        e=r1.getString("unit_price");
        f=r1.getString("med_id");
        
        
        %>
        <center>
       
        <h3><%= f %></h3>
        <p>
           med_name: <%= a%><br/>
            
           med_type: <%= b %><br/>
            company :<%= c %><br/>
            licno: <%= d %><br/>
            unit_price: <%= e %><br/>
            
            
            
        </p>
        <form method="post" action="editmedicine.jsp">
            <input type="hidden" name="H1" value="<%= f %>" />
            <input type="submit" name="B1" class="btn1" value="Edit" />
        </form>
            <form method="post" action="deletemedicine.jsp">
            <input type="hidden" name="H1" value="<%= f %>" />
            <input type="submit" name="B1" class="btn1" value="Delete" />
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
<%@include file="medical1.jsp"%>
