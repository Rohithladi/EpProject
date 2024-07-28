<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('background.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
             font-family: "Poppins", sans-serif;
  font-weight: 200;
  font-style: normal;
        }
        .container {
            max-width: 350px;
    background: #F8F9FD;
    background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%);
    border-radius: 40px;
    padding: 25px 35px;
    border: 5px solid rgb(255, 255, 255);
    box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
    margin: 20px;
        }
        h2 {
            text-align: center;
    font-weight: 700;
    font-size: 30px;
   color: rgb(16, 137, 211);
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #555;
        }
        .input-container {
            position: relative;
            margin-bottom: 15px;
        }
        .input-container i {
            position: absolute;
            left: 10px;
            top: 63%;
            transform: translateY(-50%);
            color: #999;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            padding: 10px 10px 10px 40px; /* Adjusted padding for icons */
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form action="registerServlet" method="post">
            <div class="input-container">
                <label for="username">Username:</label>
                <i class="fas fa-user"></i>
                <input type="text" id="username" name="username" required autofocus>
            </div>
            <div class="input-container">
                <label for="password">Password:</label>
                <i class="fas fa-lock"></i>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-container">
                <label for="role">Role:</label>
                <i class="fas fa-user-tag"></i>
                <input type="text" id="role" name="role" required>
            </div>
            <div class="input-container">
                <label for="email">Email:</label>
                <i class="fas fa-envelope"></i>
                <input type="email" id="email" name="email" required>
            </div>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
