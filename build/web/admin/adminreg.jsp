<%@include file="admin.jsp" %>
<center>
<h1>Admin data register</h1>
</center>

<center>
<form method="post" action="adminreg1.jsp">
    <p>name:<input type="text" name="t1" id="txt1"</p>
    <p>address:<input type="text" name="t2" id="txt2"</p>
    <p>contact:<input type="text" name="t3" id="txt3"</p>
    <p>email:<input type="text" name="t4" id="txt4"</p>
    <p>password:<input type="text" name="t5" id="txt5"</p>
    <p>confirm password:<input type="text" name="t6" id="txt6"</p>
    <p><button type="submit" class="btn1">register</button></p>
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
</form>
    <%@include file="admin1.jsp" %>
