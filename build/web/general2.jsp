<head>

<title>Untitled Document</title>
</head>
<link href="styles/css/bootstrap.css" rel="stylesheet" type="text/css" />
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
        <input class="form-control me-2" onkeyup="find_med(this.value)" type="search" placeholder="Search" aria-label="Search">
      </form>
    </div>
  </div>
</nav>
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
    </style>