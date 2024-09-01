<%@include file="admin.jsp" %>
<%@page import="java.sql.*"%>

<%@page import="medicalorg.medicalmodel"%>
<center>
    <h1>Medical Registration</h1>
</center>
<%
    //recieve form data
    String name, ownername, licno, address, contact, email, password, confirm;
    name = request.getParameter("t1");
    ownername = request.getParameter("t2");
    licno = request.getParameter("t3");
    address = request.getParameter("t4");
    contact = request.getParameter("t5");
    email = request.getParameter("t6");
    password = request.getParameter("t7");
    confirm = request.getParameter("t8");

    String msg = "";
    if (name.trim().equals("")) {
        msg = "Enter name";
    } else if (ownername.trim().equals("")) {
        msg = "Enter ownername";
    } else if (licno.trim().equals("")) {
        msg = "Enter License No.";
    } else if (address.trim().equals("")) {
        msg = "Enter address";
    } else if (contact.trim().equals("")) {
        msg = "Enter contact";
    } else if (email.trim().equals("")) {
        msg = "Enter Email";
    } else if (password.trim().equals("")) {
        msg = "Enter password";
    } else if (confirm.trim().equals("")) {
        msg = "Enter confirm";
    } else if (password.equals(confirm) == false) {
        msg = "Password not matched";
    } else {
                //Load mysql java connector driver

        //check response
        medicalmodel med = new medicalmodel();
        med.setEmail(email);
        med.setAddress(address);
        med.setName(name);
        med.setLicno(licno);
        med.setOwnername(ownername);
        med.setPassword(password);
        med.setConfirm(confirm);
        int a = med.saveMedical();
        if (a == 1) {
            msg = "Data is saved and login is created";
        } else if (a == 2) {
            msg = "Contact to admin";
        } else {
            msg = "No data saved and no login created";
        }
    }
%>


<center>
    <h3><%=msg%></h3>
    <h3><a href="showmedical.jsp">Showdata</a></h3>
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
