<%@include file="admin.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="medicalorg.adminmodel" %>

<center>

<h1>Admin Registration</h1>
</center>
<%
    //recieve form data
    String name,address,contact,email,password,confirm;
    name=request.getParameter("t1");
    address=request.getParameter("t2");
    contact=request.getParameter("t3");
    email=request.getParameter("t4");
    password=request.getParameter("t5");
    confirm=request.getParameter("t6");
    String usertype = "admin";
    
    
    String msg="";
            if(name.trim().equals(""))
            {
                msg="Enter name";
            }
            else if(address.trim().equals(""))
            {
                msg="Enter address";
            }
            else if(contact.trim().equals(""))
            {
                msg="Enter contact";
            }
            else if(email.trim().equals(""))
            {
                msg="Enter email";
            }
            else if(password.trim().equals(""))
            {
                msg="Enter password";
            }
            else if(confirm.trim().equals(""))
            {
                msg="Enter confirm";
            }
            else if(password.equals(confirm)==false)
            {
                msg="Password not matched";
            }
            else
            {
                
                adminmodel adm=new adminmodel ();
                adm.setName(name);
                adm.setAddress(address);
                adm.setContact(contact);
                adm.setEmail(email);
                adm.setPassword(password);
                int a=adm.saveAdmin();
                //check response
                if(a==1)
                {
                    msg="Data is saved and login is created";
                }
                else if(a==2)
                {
                    msg="Contact to admin";
                }
                else
                {
                    msg="No data saved and no login created";
                }
            }
        %>
        
<center>
<h3><%=msg%></h3>


<h3><a href="medicalreg.jsp">Medical registration</a></h3>
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
<%@include file="admin1.jsp" %>
