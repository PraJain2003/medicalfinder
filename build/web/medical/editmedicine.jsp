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
<h1>Edit and Save</h1>
</center>
<%
    String med_id=request.getParameter("H1");
    if(med_id==null)
        
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
        String sql="select * from medicinedata where med_id=?";
        //create statement
        PreparedStatement p1=cn.prepareStatement(sql);
        p1.setString(1, med_id);
        //Fetch data
        ResultSet r1=p1.executeQuery();

        if(r1.next())
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
<form method="post" action="editmedicine1.jsp">
    <p>med_name <input value="<%= a %>" type="text" name="t1" id="txt1" /></p>
    <p> med_type <input value="<%= b%>" type="text" name="t2" id="txt2" /></p>
    <p>company <input value="<%= c %>" type="text" name="t3" id="txt3" /></p>
    <p>licno.<input value="<%= d %>" type="text" name="t4" id="txt4" /></p>
    <p>unit_id<input value="<%= e %>" type="text" name="t5" id="txt5" /></p>
    <p>med_id<input readonly value="<%= f %>" type="text" name="t6" id="txt6" /></p>
    <button type="submit" id="btn" class="btn1">Save </button> 
</form>
    <h3><a href="showmedicine.jsp">Back</a></h3>
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
        <%@include file="medical1.jsp"%>
