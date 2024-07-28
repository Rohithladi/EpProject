<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
        }
        h2 {
            color: #000;
        }
        p {
            margin: 20px;
        }
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: none;
        }
        .container {
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffed5e;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            position: relative;
            z-index: 1;
        }
        header nav {
            background-color: rgba(0, 84, 255, 0.3);
            display: flex;
            justify-content: center;
            padding: 10px;
            position: relative;
            z-index: 1;
        }
        nav ul {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }
        nav li {
            margin: 0 15px;
        }
        nav a {
            color: white;
            text-decoration: none;
        }
        nav a:hover {
            text-decoration: underline;
        }
        footer {
            color: white;
            padding: 30px 10px;
            position: relative;
            bottom: 0;
            width: 100%;
            text-align: center;
            display: flex ;
            bottom:-100px ;
        }
        footer .footer-content {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 0 auto;
        }
        footer .footer-content div {
            margin: 10px 20px;
        }
        footer a {
            color: white;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
        .video-background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <video autoplay muted loop class="video-background">
        <source src="images/video.mp4" type="video/mp4">
    </video>
    <header>
        <nav>
            <ul>
                <li><a href="Home.jsp">Home</a></li>
                <li><a href="About.jsp">About</a></li>
                <li><a href="Contact.jsp">Contact</a></li>
                
            </ul>
        </nav>
    </header>

    <div class="container">
        <h2>Expense Tracker</h2>
        <p>You can <a href="login.jsp">login</a> or <a href="register.jsp">register</a>.</p>
    </div>

    <footer>
        <div class="footer-content">
            <div>
                <h3>Contact Us</h3>
                <p>Email: <a href="versatalesclub@gmail.com">✉</a></p>
                <p>Phone: +91-9848032919</p>
            </div>
            <div>
                <h3>Follow Us</h3>
                <p>
                    <a href="https://www.linkedin.com/in/versatales-club-klsac/">LinkedIn</a> |
                    <a href="https://www.youtube.com/@KL_VERSATALES">YouTube</a> |
                    <a href="https://www.instagram.com/klsac_versatales/">Instagram</a>
                </p>
            </div>
        </div>
    </footer>
</body>
</html>
