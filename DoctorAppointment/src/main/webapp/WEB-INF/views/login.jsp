<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style type="text/css">

#page {
            
            
            background-color: rgba(255, 255, 255, 0.7);
           
            margin-top:50px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
</style>
</head>
<body style="background-image: url('https://img.freepik.com/premium-photo/male-doctor-with-stethoscope-blurred-hospital-background_488220-54372.jpg?w=2000'); background-size: cover;">
<div align="center" style="height:150px"><h1 align="center" style="margin-top:10px;">PENNANT HOSPITAL</h1></div>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            
            <form id="page" action="http://localhost:8080/DoctorAppointment/verify" method="get">
           <br><br> <h1 class="text-center">Login</h1><br><br>
                <div class="mb-3" style="margin-left:160px">
                  <b>  <label for="user" class="form-label">UserName:</label></b>
                    <input type="text" class="form-control-sm" name="user" id="user">
                </div>
                <div class="mb-3" style="margin-left:160px">
                   <b> <label for="password" class="form-label">Password:</label></b>
                    <input type="password" class="form-control-sm" name="password" id="password">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div><br><br><div align="center"><a style="color:red;" href="http://localhost:8080/DoctorAppointment/doctorlogin">Login As Doctor?</a></div><br><br>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
</body>
</html>
