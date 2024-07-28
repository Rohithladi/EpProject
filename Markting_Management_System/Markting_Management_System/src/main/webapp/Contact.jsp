<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            color: #333;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #007bff;
        }
        .email {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .email a {
            color: #007bff;
            text-decoration: none;
        }
        .email a:hover {
            text-decoration: underline;
        }
        .message {
            font-size: 16px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Contact Us</h2>
        <p class="message">For any queries or support, please send an email to:</p>
        <p class="email"><a href="mailto:rohit@gmail.com">rohit@gmail.com</a></p>
        <p class="message">We will get back to you as soon as possible.</p>
    </div>
</body>
</html>
