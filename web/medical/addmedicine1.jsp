<%@include file="medical.jsp" %>
<%@page import="java.sql.*"%>



<center>
<h1>Medicine Registration</h1>
</center>
<%
    //recieve form data
    String med_name,med_type,company,licno,unit_price,email_medical;
    med_name=request.getParameter("t1");
    med_type=request.getParameter("t2");
    company=request.getParameter("t3");
    licno=request.getParameter("t4");
    unit_price=request.getParameter("t5");
    email_medical=request.getParameter("t6");
   
    
    //load driever with mysql connectivity
    Class.forName("com.mysql.jdbc.Driver");
    //create connection with mysql
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    //create sql command
    String sql="insert into medicinedata values(0,?,?,?,?,?,?)";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
     
    // replace ? with data
    
    p1.setString(1,med_name);
    p1.setString(2,med_type);
    p1.setString(3,company);
    p1.setString(4,licno);
    p1.setDouble(5,Double.parseDouble(unit_price));
    p1.setString(6, email_medical);
    
   
    //senddata to table
    int a=p1.executeUpdate();
    String msg="";
    if(a==1)
    {
        msg="Data is saved successfully";
    }
    else
    {
        msg="error:cannot save data";
    }
    
    
%>
<center>
<h3><%=msg%></h3>
<h3><a href="showmedicine.jsp">Show Data</a></h3>
            
</center>
<style>
    h3
    {
        padding-top: 20px;
        font-family: serif;
        font-weight: bold;
        font-size: 28px;
    }
    h1{
        padding-top: 10px;
        font-family: serif;
        font-weight: bold;
        font-size: 28px; 
    }
</style>
<%@include file="medical1.jsp"%>
