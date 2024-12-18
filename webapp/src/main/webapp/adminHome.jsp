<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container bg-white">
		<div class="row bg-info">
	    <div class="col-12">
	      <p></p>
	    </div>
    </div>
		<div class="row">
			<div class="col-7">
			<img alt="logo" src="./images/header.jpg">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/21-years-logo-new.png" width="100%" height="80%">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/jits-naac2.png">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/aicte.png">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/jits-iso.png">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/ugc.png">
			</div>
		</div>
		<div class="row bg-info">
			<div class="col-12">
			<h1 class="text-success" align="center">Leaves Application Development</h1>
			</div>
		</div>
		<div class="row" style="background-color:orange">
      <div class="col-12">
            <ul class="nav rounded shadow" style="background-color: orange;">
                <li class="nav-item btn btn-success m-3" ><a href="adminHome.jsp" class="nav-link text-light active">Home</a></li>
                <li class="nav-item btn btn-success m-3" ><a href="adminHodLeaves.jsp" class="nav-link text-light active ">HOD</a></li>
                <li class="nav-item btn btn-success m-3" ><a href="adminFacultyLeaves.jsp" class="nav-link text-light active ">Faculty</a></li>
                
                <li class="nav-item btn btn-success m-3" ><a href="facultyLogin.html" class="nav-link text-light active">Exit</a></li>
            </ul>
		  </div>
	  </div>
  </div>
</body>
</html>