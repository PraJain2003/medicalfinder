<%@include file="admin.jsp" %>
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
<h1>Delete and Save</h1>
</center>
<%
    String email=request.getParameter("H1");
    if(email==null)
    {
        %>
        <h3><a href="showmedical.jsp">Select record</a></h3>
        <%
    }
    else
    {
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
        p1.setString(1, email);
        //Fetch data
        ResultSet r1=p1.executeQuery();

        if(r1.next())
        {
            String a,b,c,d,e;
            a=r1.getString("name");
            b=r1.getString("licno");
            c=r1.getString("address");
            d=r1.getString("contact");
            e=r1.getString("email");
%>

<center>
<form method="post" action="deletemedical1.jsp">
    <p>name <input value="<%= a %>" type="text" name="t1" id="txt1" /></p>
    <p> licno: <input value="<%= b%>" type="text" name="t3" id="txt3" /></p>
    <p>address <input value="<%= c %>" type="text" name="t4" id="txt4" /></p>
    <p>contact<input value="<%= d %>" type="text" name="t5" id="txt5" /></p>
    <p>email<input readonly value="<%= e %>" type="text" name="t6" id="txt6" /></p>
    <button type="submit" id="btn" class="btn1">delete </button> 
</form>
    <h3><a href="showmedical.jsp">Back</a></h3>
</center>
<%
        }//end of if r1.next
        else
        {
            %>
            <h3>Error : No data found</h3>
            <%
        }
    }//end of if in which we sent request to edit       }
%>
<style>
            h1
{
    padding-top: 17px;
    font-family:serif;
    font-weight: bold;
}
 h3
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
        <%@include file="admin1.jsp" %>
