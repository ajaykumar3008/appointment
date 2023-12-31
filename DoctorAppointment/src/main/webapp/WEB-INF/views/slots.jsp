<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slot Calendar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .calendar-table {
            table-layout: fixed;
        }
        .calendar-table th, .calendar-table td {
            text-align: center;
            padding: 10px;
        }
        .calendar-header {
      align: center;
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <div class="calendar-header">
            
            <h2 id="currentMonthYear" class="text-center"></h2>
            
        </div>

        <table class="table table-bordered calendar-table">
            <thead>
                <tr>
                    <th class="bg-secondary text-white">Sun</th>
                    <th>Mon</th>
                    <th>Tue</th>
                    <th>Wed</th>
                    <th>Thu</th>
                    <th>Fri</th>
                    <th class="bg-secondary text-white">Sat</th>
                </tr>
            </thead>
            <tbody id="calendarBody">
                
            </tbody>
        </table>
    </div>
	<button style="margin-left:120px;" class="btn btn-primary" id="prevMonth">Previous Month</button>
	<button style="margin-left:1050px;" class="btn btn-primary" id="nextMonth">Next Month</button>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MoGn538z5U7b+OrCXmKA6Q5/Um5z9zNfzbsC6JZs5r5jft02a5r5jft02+aR5a6E" crossorigin="anonymous"></script>

    <script>
        const prevMonthButton = document.getElementById("prevMonth");
        const nextMonthButton = document.getElementById("nextMonth");
        const currentMonthYearElement = document.getElementById("currentMonthYear");
        const calendarBody = document.getElementById("calendarBody");
        
        let currentDate = new Date();
        
        
        function generateCalendar() {
            const year = currentDate.getFullYear();
            const month = currentDate.getMonth();
            const daysInMonth = new Date(year, month + 1, 0).getDate();
            const firstDayOfMonth = new Date(year, month, 1).getDay();
            
            // Clear the calendar body
            calendarBody.innerHTML = "";
            
            // Set the current month and year
            currentMonthYearElement.textContent = new Date(year, month, 1).toLocaleString('default', { month: 'long' }) + " " + year;
            
            // Create a row for each week
            let row = document.createElement("tr");
            for (let i = 0; i < firstDayOfMonth; i++) {
                const cell = document.createElement("td");
                row.appendChild(cell);
            }
            
            for (let day = 1; day <= daysInMonth; day++) {
                const cell = document.createElement("td");
                cell.textContent = day;
				//cell.style.backgroundColor = "grey";
				
				cell.style.backgroundColor = "green";
				cell.addEventListener("click", () => {
				    const dayParameter = encodeURIComponent(day);
				    const url = `http://localhost:8080/DoctorAppointment/slot?day=${day}&month=${month}&year=${year}&doctor=<%=request.getAttribute("dotorID")%>`;
				    window.location.href = url;
				});

				cell.style.cursor = "pointer";
				
		//-------------------------------------------
		
                row.appendChild(cell);
                
                if (row.children.length === 7) {
                    calendarBody.appendChild(row);
                    row = document.createElement("tr");
                }
            }
            
            // Add the last row to the calendar body
            calendarBody.appendChild(row);
        }
        
        // Generate and display the initial calendar
        generateCalendar();
        
        // Event listeners for previous and next month buttons
        prevMonthButton.addEventListener("click", () => {
            currentDate.setMonth(currentDate.getMonth() - 1);
            generateCalendar();
        });
        
        nextMonthButton.addEventListener("click", () => {
            currentDate.setMonth(currentDate.getMonth() + 1);
            generateCalendar();
        });
    </script>
</body>
</html>
