<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendar</title>
    <!-- Use Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        /* Additional Custom CSS (if needed) */
        .calendar {
            margin-top: 20px;
        }
        /* Add a cursor pointer style to indicate clickable cells */
        td.clickable {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mt-4 mb-4">Calendar</h1>
        <div class="calendar table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Sun</th>
                        <th>Mon</th>
                        <th>Tue</th>
                        <th>Wed</th>
                        <th>Thu</th>
                        <th>Fri</th>
                        <th>Sat</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                            for (int day = 1; day <= 7; day++) {
                                String servletURL = "http://localhost:8081/DoctorAppointment/doctor?day=" + day;
                                boolean isDisabled = (day == 2 || day == 3); // Disable the 2nd and 3rd dates
                                String tdClass = isDisabled ? "" : "clickable";
                        %>
                            <td class="<%= tdClass %>" <%= !isDisabled ? "onclick=\"window.location.href='" + servletURL + "'\"" : "" %>><%= day %></td>
                        <%
                            }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Add Bootstrap JS and jQuery (if needed) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MoGn538z5U7b+OrCXmKA6Q5/Um5z9zNfzbsC6JZs5r5jft02a5r5jft02+aR5a6E" crossorigin="anonymous"></script>
    
    <script>
        // You can add JavaScript event listeners here
    </script>
</body>
</html>
