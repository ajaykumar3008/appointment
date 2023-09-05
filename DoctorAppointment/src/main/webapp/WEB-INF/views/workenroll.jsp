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
            background-color: rgba(255, 255, 255, 0.5);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
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
        input[type="tel"],input[type="number"],input[type="time"] {
            width: 380px;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
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
<body style="#8cad97"><br>
    <div class="container">
        <h1>Add Working Days</h1>
        <form action="http://localhost:8080/DoctorAppointment/confirmwokingdays" method="get">
            <label for="name">Working From:</label>
            <input type="time" id="name" name="availableFrom" >
            
            <label for="name">Working To:</label>
            <input type="time" id="name" name="availableTo" >

			<label for="name">Select the week days:</label>
            <label>
            <input type="checkbox" name="day" value="1">
            Monday
        	</label>
        <br>
        	<label>
            <input type="checkbox" name="day" value="2">
            Tuesday
        	</label>
        <br>
        	<label>
            <input type="checkbox" name="day" value="3">
            Wednesday
        	</label>
        <br>
        	<label>
            <input type="checkbox" name="day" value="4">
            Thursday
        	</label>
        <br>
        <label>
            <input type="checkbox" name="day" value="5">
            Friday
        </label>
        <br>
        <label>
            <input type="checkbox" name="day" value="6">
            Saturday
        </label><br>
        <label>
            Each Session Time (in Min):
        </label><input type="number" name="session" value="">
			<div align="center">
            <button type="submit" name="doctor" value="1">Submit</button></div>
        </form>
    </div>
</body>
</html>
