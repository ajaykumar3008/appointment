<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
       		margin-top:30px;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            
        }

        h1 {
            text-align: center;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        select,
        input[type="number"] {
            width: 380px;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body><br>
    <div class="container">
        <h1>Patient details</h1>
        <form action="http://localhost:8080/DoctorAppointment/preview" method="get">
            <label for="name">Patient Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>

            <label for="age">Patient Age:</label>
            <input type="number" id="age" name="age" required>

            <label for="weight">Patient Weight (in kg):</label>
            <input type="number" id="weight" name="weight" required>

            <label for="height">Patient Height (in cm):</label>
            <input type="number" id="height" name="height" required>
            <label for="problem">Problem:</label>
            <input type="text" id="problem" name="problem" required>
			<input type="hidden" name="date" value="<%=request.getAttribute("date")%>">
			<input type="hidden" name="slot" value="<%=request.getAttribute("slot")%>"><div align="center">
            <button type="submit" name="doctor" value="<%=request.getAttribute("doctor")%>">Submit</button></div>
        </form>
    </div>
</body>
</html>
