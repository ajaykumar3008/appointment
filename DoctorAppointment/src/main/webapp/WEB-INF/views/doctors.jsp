<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,appointment.*" %>
<% List<Doctor> docs = (List<Doctor>) request.getAttribute("doctors"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Available Doctors</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="background-color:#b0d4c2">
    <div class="container mt-5">
        <h1 class="text-center">Available Doctors</h1>

        <div class="row">
            <% if (docs != null && !docs.isEmpty()) { %>
                <% for (int i = 0; i < docs.size(); i++) { %>
                    <div class="col-md-3 mb-3">
                        <div class="card">
                            <form action="http://localhost:8080/DoctorAppointment/doctor" method="get">
                                <button type="submit" class="card-link">
                                    <img class="card-img-top mx-auto" style="width:290px;height:250px;" src="<%= docs.get(i).getPhoto() %>" alt="Doctor's Photo">
                                </button>
                                <input type="hidden" name="doctorID" value="<%= docs.get(i).getDoctorId() %>">
                            </form>
                            <div class="card-body">
                                <h4 class="card-title"><%= docs.get(i).getFullName() %></h4>
                                <p class="card-text"><%= docs.get(i).getDesignation() %></p>
                            </div>
                        </div>
                    </div>
                <% } %>
            <% } else { %>
                <p class="text-center">No doctors to display.</p>
            <% } %>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
