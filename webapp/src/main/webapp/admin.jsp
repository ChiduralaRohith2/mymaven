<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
	    .admin{
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
        function showAlert() {
            alert("try to log in...");
        }
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
			<ul class="nav rounded shadow" style="background-color: orange;">
                <li class="nav-item btn btn-success m-3" ><a href="index.html" class="nav-link text-light active">Home</a></li>
                <li class="nav-item btn btn-success m-3" ><a href="admin.jsp" class="nav-link text-light active">Admin</a></li>
                <li class="nav-item btn btn-success m-3" ><a href="facultyLogin.html" class="nav-link text-light active ">Faculty</a></li>             	
            </ul>
		</div>
		<div class="row"><p></p></div>
		<div class="row"><p></p></div>
		<div class="row"> 
			<div class="col-4"></div> 
			<div class="col-4 admin">
        	<h2>Admin Login</h2>
        	<table>
        	<form action="./adminaction.jsp" method="post" onsubmit="showAlert()">
        		<tr>
        		<td>
            	<label for="">Admin-ID :</label>
            	</td>
            	<td>
            	<input type="text" class="id" name="adminid" placeholder="Enter admin-ID" required><br>
            	</td>
            	</tr>
            	<tr>
            	<td>
            	<label for="">Password :</label>
            	</td>
            	<td>
            	<input type="password" class="password" name="pass" placeholder="Enter Password" required><br>
            	</td>
            	</tr>
            	<tr>
            	<hr></tr>
            	<tr>
            	<td></td>
            	<td>
            	<input type="submit" class="btn btn-primary btn-lg" value="Login">
            	</td>
            	</tr>
        	</form>
        	</table>
    		</div>
    		<div class="col-4"></div>
		</div>
</body>
</html>