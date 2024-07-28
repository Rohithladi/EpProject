<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Expenses</title>
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
            background-image: url('images/background.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            color: #fff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #fff;
        }
        .form-container {
            text-align: left;
            margin-top: 20px;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
            color: #ddd;
        }
        .form-container input, .form-container select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: none;
            border-radius: 4px;
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
            cursor: pointer;
        }
        .message {
            margin-bottom: 20px;
            color: #ffcc00;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Expense</h2>
        <div class="form-container">
            <% 
                String message = (String) request.getAttribute("message");
                if (message != null) { 
            %>
                <p class="message"><%= message %></p>
            <% } %>
            <form action="addExpense" method="post">

    <label for="date">Date:</label>
    <input type="date" id="date" name="date" required>
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" required>
    <label for="amount">Amount:</label>
    <input type="number" id="amount" name="amount" required>
    <label for="category">Category:</label>
    <select id="category" name="category" required>
        <option value="food">Food</option>
        <option value="transport">Transport</option>
        <option value="utilities">Utilities</option>
        <option value="entertainment">Entertainment</option>
        <option value="other">Other</option>
    </select>
    <input type="submit" class="btn" value="Add Expense">
</form>
        <% 
            Object messageObj = request.getAttribute("message");
            if (messageObj != null) {
                String messa = (String) messageObj;
                if (messa.equals("Expense added successfully!")) { 
        %>
            <p class="message"><%= message %></p>
            <a href="viewExpenses.jsp" class="btn">Show Expenses</a>
        <% } else { %>
            <p class="error"><%= message %></p>
        <% 
                } 
            } 
        %>
        </div>
    </div>
</body>
</html>
