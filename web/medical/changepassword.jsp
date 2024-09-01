<%@include file="medical.jsp" %>
<center>
<h1>Change Password</h1>

<form method="post" action="changepassword1.jsp">
    <p>old_pass:<input type="password" name="t1" id="txt1"</p>
    <p>new_pass:<input type="password" name="t2" id="txt2"</p>
    <p>confirm_pass:<input type="password" name="t3" id="txt3"</p>
    
    <p><button type="submit" class="btn1">submit</button></p>
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
