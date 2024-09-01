<%@include file="general.jsp" %>
<center>
    
<h1>Login to Medicine Finder  </h1>

<form method="post" action="checklogin.jsp">
    <p>Email:<input type="email" name="t1"  id="txt1"/></p>
    <p>Password:<input type="password" name="t2" id="txt2"/></p> 
    
    <p><button type="submit" name="b1" id="btn1" >Login</button></p>
</form>
</center>
<%@include file="general1.jsp" %>
<style>
h1
{
    padding-top: 17px;
    font-family:serif;
    font-weight: bold;
}
p
{
    padding-top: 10px;
}
#btn1
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
#btn1:hover
{
    background: #009966;
}
</style>
