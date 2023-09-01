<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="appointment.*" %>
<% Doctor doc = (Doctor) request.getAttribute("doctor"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Doctor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                
                    <img class="card-img-top" src="<%= doc.getPhoto() %>" alt="Doctor's Photo">
                    
                
            </div>
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title"><%= doc.getFullName() %></h4>
                    <p class="card-text"><%= doc.getDesignation() %></p>
                    <p class="card-text"><%=doc.getExperiance()+"     " %>Years of Experience</p>
                </div>
                 
            </div>
            <br><br><br>
            <form action="http://localhost:8081/DoctorAppointment/slots" method="get">
            <div align="center"><button class="btn btn-primary" style="width:200px">book your slot</button></div>
            <input type="hidden" name="doctorID" value="<%= doc.getDoctorId() %>">
            </form>
        </div>
       
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
