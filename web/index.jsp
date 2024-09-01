<%@page import="java.sql.*" %>
<%@include file="general2.jsp" %>

<script type="text/javascript">
function find_med(str)
{
	var xmlhttp;
	if (str.length==0)
	{ 
		document.getElementById("s1").innerHTML="";
		return;
	}
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
				document.getElementById("s1").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","search_med.jsp?q="+str,true);
	xmlhttp.send();
}
</script>



<center><h1>Medicine Finder</h1>

<form method="post" action="" style="font-size: large;">
    <p>
        Medicine name:<input onkeyup="find_med(this.value)" type="text " placeholder="search" name="s1" />
        
    </p>
</form>
    
    
    
            </center>


<span id="s1"></span>

<%@include file="general1.jsp" %>
 <style>
    .j1
    {
        
        font-family: serif;
        font-size: 28px;
        color: #009966;
        font-weight: bold;
    }
    
    .t1
    {
        font-family: serif;
        font-size: 22px;
        font-weight: bold;
        color: #009966;
    }
    
                
                
                p
                {
                   font-weight: bold;
                }
.k1
{
    height:50px;
    width:110px;
    color:#000;
    background:#ffffff;
    border-radius:20px;
    font-size:30px;
    cursor:pointer;
    border:2px solid #000;

}   
.k1:hover
{
    background: #009966;
}
h3
    {
                 padding-top: 15px;
                 font-family: serif;
                 font-weight: bold;
                 font-size: 40px;
    }
    h1
    {
                 padding-top: 15px;
                 font-family: serif;
                 font-weight: bold;
                 font-size: 40px;
    }
    .m
    {
     font-size: 24px;
     font-family: serif;
    }
</style>