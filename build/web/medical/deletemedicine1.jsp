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
<h1>Delete and Save</h1>
</center>
<%
    //Receive form data
   String med_name,med_type,company,licno,unit_price,med_id;
    med_name=request.getParameter("t1");
    med_type=request.getParameter("t2");
    company=request.getParameter("t3");
    licno=request.getParameter("t4");
    unit_price=request.getParameter("t5");
    med_id=request.getParameter("t6");
    
    
    //load driver for mysql-connetivity with java
    Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    
    //Create sql command
    String sql="delete from medicinedata where med_id=?";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    
    //Replace ? with data
    p1.setString(1, med_id);
   
    
    
    
    
    
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
<h3><a href="showmedicine.jsp">Continue</a></h3>
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
<%@include file="medical1.jsp"%>
