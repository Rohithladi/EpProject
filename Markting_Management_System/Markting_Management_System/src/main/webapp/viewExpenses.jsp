<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Expenses</title>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('images/Expense.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            color: #fff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 600px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #fff;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Previous Expenses</h2>

        <table>
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Amount</th>
                    <th>Category</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Sample data
                    String[][] expenses = {
                        {"2024-07-18", "Turmeric", "779.00", "food"},
                        {"2024-07-27", "Turmeric", "1000.00", "food"},
                        {"2024-07-27", "Turmeric", "1000.00", "food"},
                        {"2024-07-27", "Sugar", "1000.00", "food"},
                        {"2024-07-27", "Sugar", "1000.00", "food"}, 
                        {"2024-07-27", "Icecream", "50.00", "food"},                  
                        {"2024-07-18", "Bellam", "50.00", "food"}
                    };

                    double totalAmount = 0.0;
                    for (int i = 0; i < expenses.length; i++) {
                        String date = expenses[i][0];
                        String description = expenses[i][1];
                        double amount = Double.parseDouble(expenses[i][2]);
                        String category = expenses[i][3];
                        totalAmount += amount;
                %>
                <tr>
                    <td><%= date %></td>
                    <td><%= description %></td>
                    <td><%= amount %></td>
                    <td><%= category %></td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <td colspan="2"></td>
                    <td><strong>Total:</strong></td>
                    <td><%= totalAmount %></td>
                </tr>
            </tbody>
        </table>
        <a href="welocme.jsp" class="btn">Back to Welcome</a>
    </div>
</body>
</html>
