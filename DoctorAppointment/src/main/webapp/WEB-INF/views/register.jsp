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
        input[type="tel"],input[type="email"],input[type="password"] {
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
<body style="background-image:url(https://lawpartners.com.au/wp-content/uploads/2020/08/Stethoscope-on-a-laptop-indicating-doctor-negligence..jpg)"><br>
    <div class="container">
        <h1>User details</h1>
        <form action="http://localhost:8080/DoctorAppointment/login" method="get">
            <label for="name">First Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="name">Last Name:</label>
            <input type="text" id="name" name="name" required>

            
            <label for="mobile">Mobile No:</label>
            <input type="tel" id="mobile" name="mobile" required>

            <label for="mail">Email:</label>
            <input type="email" id="mail" name="mail" required>
            
            <label for="pass">Password:</label>
            <input type="password" id="pass" name="pass" required>
			<div align="center">
            <button type="submit" name="user">Register</button></div>
        </form>
    </div>
</body>
</html>
