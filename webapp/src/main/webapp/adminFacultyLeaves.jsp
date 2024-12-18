<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Leaves</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: orange;
            color:black;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            margin-right: 10px;
            cursor: pointer;
        }
         .button:hover {
            background-color: rgb(12, 236, 248);
        }
        .leave{
            text-align: center;
            background-color: orange;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .id,.password{
            margin-bottom: 10px;
            padding: 8px;
            width: 200px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
    </style>
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
			<div class="col">
			<h1 class="text-success" align="center">Leaves Application Development</h1>
			</div>
		</div>
		<div class="row">
            <ul class="nav shadow" style="background-color: orange;">
                <li class="nav-item btn btn-success m-3" ><a href="adminHome.jsp" class="nav-link text-light active">Home</a></li>
                <li class="nav-item btn btn-success m-3" ><a href="index.html" class="nav-link text-light active">Exit</a></li>
            </ul>
		</div>
		<div class="row">
	    	<div class="col-12">
	      		<p></p>
	    	</div>
    	</div>
		<div class="row"> 
			<div class="col-4"></div> 
			<div class="col-4 leave" style="background-color:orange;">
        	<h2><u>Leaves</u></h2><br>
            	<a href="adminFacultyCL.jsp"><button type="button" class="btn btn-primary btn-lg">Casual Leave/C.C.L</button></a><br><br>
            	<a href="adminOnDuty.jsp"><button type="button" class="btn btn-primary btn-lg">On-Duty</button></a>
    		</div>
    		<div class="col-4"></div>
		</div>
	</div>
</body>
</html>