<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Faculty Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<style>
        .faculty {
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
    <script>
  
    </script>
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
			<div class="col" style="background-color: orange;">
            <ul class="nav rounded shadow">
                <li class="nav-item btn btn-success m-3" ><a href="Principal.jsp" class="nav-link text-light active">Home</a></li>
            	<li class="nav-item btn btn-success m-3" ><a href="PrincipalCL.jsp" class="nav-link text-light active ">Back</a></li>
            </ul>
		  	</div>
          </div>
          <div class="row"><p></p></div>
		<div class="row"> 
			<div class="col-4"></div> 
			<div class="col-4 faculty">
        	<table>
        		<h2 clas="p-3 m-5">Leave Approved.....!</h2>
        	</table>
    		</div>
    		<div class="col-4"></div>
		</div>
	</div>
</body>
</html>