<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,loanmanagement.*" %>
    <%List<LoanApplicant> loanList=(List<LoanApplicant>)request.getAttribute("applicants"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Reset some default styles for the page */
        body, ul {
            margin: 0;
            padding: 0;
        }

        /* Style for the menu */
        .menu {
            background-color: #333;
            color: white;
            width: 200px; /* Adjust the width as needed */
            height: 100%; /* Full height menu */
            position: fixed;
            top: 0;
            left: 0;
        }

        .menu ul {
            list-style-type: none;
            padding: 20px;
        }

        .menu ul li {
            margin-bottom: 10px;
        }

        .menu a {
            color: white;
            text-decoration: none;
        }

        /* Style for the content */
        .content {
            margin-left: 220px; /* Adjust the margin to account for the menu width */
            padding: 20px;
        }

        /* Example styles for the content area */
        .content h1 {
            font-size: 24px;
        }

        .content p {
            font-size: 16px;
        }
        table {
            border-collapse: collapse;
        }

       table {
            border-collapse: collapse;
        }

        th, td {
            padding: 5px; /* Add padding to separate table cells */
        }

        /* Set column widths */
        th:nth-child(1),
        td:nth-child(1) {
            width: 150px; /* Set width for the first column */
        }

        th:nth-child(2),
        td:nth-child(2) {
            width: 200px; /* Set width for the second column */
        }

        th:nth-child(3),
        td:nth-child(3) {
            width: 100px; /* Set width for the third column */
        }

        th:nth-child(4),
        td:nth-child(4) {
            width: 80px; /* Set width for the fourth column */
        }
    </style>
    <title>Left Top Menu Page</title>
</head>
<body>
    <div class="menu">
        <ul>
            <li><a href="http://localhost:8080/LoanManagement/applicant">Loan Applicants</a></li>
            <li><a href="#">Loans</a></li>
            <li><a href="#">Repayments</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
    <div class="content">
        <table><tr>
        <th>Application ID</th>
        <th>Applicant Name</th>
        <th>Customer ID</th>
        
        </tr>
        <%for(LoanApplicant la:loanList){ %>
        <tr>
        <td><%=la.getAppicantid() %></td>
        <td><%=la.getApllicantname() %></td>
        <td><%=la.getCustomerid() %></td> 
        </tr>
        <%} %>
        </table>
        
    </div>
</body>
</html>
