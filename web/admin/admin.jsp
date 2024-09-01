<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<link href="../styles/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="../styles/js/bootstrap.bundle.js" type="text/javascript">

</script>

<style>
    .banner
    {
        height:120px;
	padding-top:15px;
	font-size:50px;
	text-align:center;
	color: #000;
	font-weight:bolder;
    }
</style>
<body>
    <div class="banner">
        Welcome to Admin
        
    </div>
<nav class="navbar navbar-expand-lg navbar-light bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" style="font-size:28px; font-family: serif; font-weight: bold;" href="#">Admin</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="adminhome.jsp">Home</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Admin
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
              <li><a class="dropdown-item" href="adminreg.jsp">Admin</a></li>
              <li><a class="dropdown-item" href="showadmin.jsp">Show</a></li>
        </li>
        
      </ul>
              <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Medical
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
              <li><a class="dropdown-item" href="medicalreg.jsp">Register</a></li>
              <li><a class="dropdown-item" href="showmedical.jsp">Manage</a></li>
              <li><a class="dropdown-item" href="changepassword.jsp">change password</a></li>
        </li>
        
      </ul>

      <li class="nav-item">
          <a class="nav-link active" href="../logout.jsp" aria-current="page">Logout</a>
        </li>
    </div>
  </div>
</nav>
