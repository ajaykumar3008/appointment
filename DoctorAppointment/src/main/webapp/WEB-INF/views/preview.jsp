<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="appointment.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Preview</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
        }
        .appointment-details {
            margin-top: 20px;
        }
        .preview-button {
            margin-top: 20px;
        }
    </style>
</head>
<body><br>
    <div class="container">
        <h1 class="mb-4">Appointment</h1>

        <div class="appointment-details">
            <h2></h2>
            <p><strong>Appointment Id:</strong>5</p>
            <p><strong>Date:</strong>14-09-2023</p>
            <p><strong>Time:</strong><%=request.getAttribute("slot") %></p>
            <p><strong>Patient Name:</strong><%=((Patiant)request.getAttribute("patient")).getName() %></p>
        </div>
<form action="http://localhost:8080/DoctorAppointment/verify" method="get">
        <div class="preview-button mt-4">
            <button class="btn btn-primary mr-2" onclick="confirmAppointment()">Confirm Appointment</button>
            <button class="btn btn-secondary" onclick="editAppointment()">Edit Appointment</button>
        </div>
        </form>
    </div>

    <!-- Include Bootstrap JS (at the end of the body for better performance) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function confirmAppointment() {
            // Perform actions to confirm the appointment (e.g., submit data to the server).
            alert('Appointment confirmed!');
            // Redirect to a confirmation page or perform any other necessary actions.
        }

        function editAppointment() {
            // Redirect or navigate to the appointment scheduling/editing page.
            window.location.href = 'appointment-scheduler.html'; // Replace with your actual URL.
        }
    </script>
</body>
</html>
