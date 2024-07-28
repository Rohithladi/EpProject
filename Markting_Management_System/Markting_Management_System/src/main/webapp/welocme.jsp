<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
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
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #fff;
        }
        p {
            margin-bottom: 20px;
            color: #ddd;
        }
        .overview {
            text-align: left;
            margin-top: 20px;
        }
        .overview ul {
            list-style-type: none;
            padding: 0;
        }
        .overview li {
            margin-bottom: 10px;
            color: #ddd;
        }
        .overview i {
            color: #ffcc00;
            margin-right: 10px;
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
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
        <p>You have successfully logged into your Expense Tracking.</p>
        <div class="overview">
            <h3>Overview</h3>
            <ul>
                <li><i class="fas fa-chart-line"></i>Visualize and manage your expenses</li>
                <li><i class="fas fa-share-alt"></i>Seamless sharing of expense reports</li>
                <li><i class="fas fa-users"></i>Collaborate on budgets with family</li>
                <li><i class="fas fa-cogs"></i>Support informed financial decision-making</li>
                <li><i class="fas fa-database"></i>Comprehensive expense data management</li>
            </ul>
        </div>
        <a href="show.jsp" class="btn">Go to Expenses</a>
    </div>
</body>
</html>
