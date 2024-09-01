<%@include file="admin.jsp" %>

<center>
<h1>Medical Data Register</h1>

<form method="post" action="medicalreg1.jsp">
    <p>name<input type="text" name="t1" id="txt1"</p>
    <p>owner name:<input type="text" name="t2" id="txt2"</p>
    <p>license no.<input type="text" name="t3" id="txt3"</p>
    <p>address<input type="text" name="t4" id="txt4"</p>
    <p>contact<input type="text" name="t5" id="txt5"</p>
    <p>email<input type="text" name="t6" id="txt6"</p>
    <p>password<input type="text" name="t7" id="txt7"</p>
    <p>confirm password<input type="text" name="t8" id="txt8"</p>
    <p><button type="submit"class="btn1">register</button></p>
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
<%@include file="admin1.jsp" %>
        