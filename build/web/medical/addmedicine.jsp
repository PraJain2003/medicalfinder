<%@include file="medical.jsp" %>

<center>
<h1>Medicine Registration</h1>
<form method="post" action="addmedicine1.jsp">
    <p>med_name<input type="text" name="t1" id="txt1"</p>
    <p>med_type<input type="text" name="t2" id="txt2"</p>
    <p>company<input type="text" name="t3" id="txt3"</p>
    <p>licenseno.<input type="text" name="t4" id="txt4"</p>
    <p>unit_price<input type="text" name="t5" id="txt5"</p>
        <p>email_medical<input type="email" name="t6" id="txt6"</p>

    
    <p><button type="submit" class="btn1">register</button></p>
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
    padding-top: 3px;
    font-weight: bold;
    font-family: serif;
    font-size: 20px;
}
.btn1
{
     height:60px;
    width:130px;
    color:#000;
    background:#ffffff;
    border-radius:20px;
    font-size:35px;
    cursor:pointer;
    border:2px solid #000;
}
.btn1:hover
{
    background: #009966;
}
        </style>
<%@include file="medical1.jsp"%>
