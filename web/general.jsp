<head>

<title>Untitled Document</title>
</head>
<link href="styles/css/bootstrap.css" rel="stylesheet" type="text/css" />
<style>
    .banner
    {
        height:260px;
	padding-top:75px;
	font-size:55px;
	text-align:center;
	color: #000;
	font-weight:bolder;
        background-image:url("images/medicine.webp");
        background-size: 100%;
        text-shadow:#09C 0px 0px 5px;

        
    }
    .middle
{
	min-width:400px;
	width:1280px;
	padding:10px;
	float:left;
	
}
.content
{
	height:330px;
	width:760px;
	float:inherit;
	line-height:30px;
	word-spacing:3px;
	overflow:auto;
}
.ad
{
	height:330px;
	width:500px;
	float:right;
}
.img
{
	height:300px;
	width:550px;
	border-radius:40px;
	border:solid  #999;
}
.para
{
	text-decoration:underline;
	font-size: 28px;
	font-style:normal;
	font-weight:bolder;
	font-family:Arial, Helvetica, sans-serif;
}
.para1
{
	text-decoration:blink;
	font-size: 22px;
	font-style:normal;
	font-weight:bold;
	font-family:Arial, Helvetica, sans-serif;
}
.para2
{
	text-decoration:blink;
	font-size: 16px;
	font-style:normal;
	font-weight:bold;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
<body>
    <div class="banner">
        Welcome to Medicine Finder
        
    </div>
<nav class="navbar navbar-expand-lg navbar-light bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" style="font-size:28px; font-family: serif; font-weight: bold;" href="#">Medical Finder</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="allmedical.jsp">Medicals</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link active" href="Login.jsp"  aria-current="page">Signin</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-dark" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
    
    <div class="middle">
                	<div class="content">
                            <span class="para"><b>About Medicines</b></span></br></br>
                            <span class="para1">Welcome to Medicine finder,here we have different types of medicines.</br> </span>
                               <span class="para2"> Medicines can treat diseases and improve your health. If you are like most people,</br> you need to take medicine at some point in your life. 
                                   You may need to take medicine</br> every day, or you may only need to take medicine once in a while. Either way, you</br> want to make sure that your 
           medicines are safe, and that they will help you get better.</br> In the United States, the Food and Drug Administration is in charge of ensuring 
           that</br> your prescription and over-the-counter medicines are safe and effective.</span>
                     

                            </div><!--content end-->
                    <div class="ad">
                        <img src="images/photo-1631549916768-4119b2e5f926.avif" alt="my img" class="img">
                    </div><!--ad end-->
           

     </div><!--middle end-->