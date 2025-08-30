<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Me - My Portfolio</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #121212;
            color: #e0e0e0;
        }

        header {
            background: url('image/img2.jpg') no-repeat center center/cover;
            height: 220px;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        header::after {
            content: "";
            position: absolute;
            inset: 0;
            background: rgba(0,0,0,0.7);
        }
        header h1 {
            position: relative;
            z-index: 1;
            font-size: 34px;
            color: #fff;
        }

        nav {
            margin-top: 15px;
            position: relative;
            z-index: 1;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 20px;
            transition: color 0.2s;
        }
        nav a:hover {
            color: #90caf9;
        }

        section {
            padding: 50px 20px;
            max-width: 1000px;
            margin: auto;
        }

        .about-container {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            background: #1e1e1e;
            border-radius: 16px;
            padding: 40px;
            box-shadow: 0 6px 16px rgba(0,0,0,0.6);
        }

        .profile-img {
            flex: 1;
            min-width: 220px;
            text-align: center;
        }
        .profile-img img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            border: 4px solid #2196f3;
        }

        .about-text {
            flex: 2;
            padding: 20px;
        }
        .about-text h2 {
            margin-top: 0;
            color: #90caf9;
            font-size: 26px;
        }
        .about-text p {
            line-height: 1.7;
            font-size: 17px;
            color: #ddd;
        }

        .btn {
            display: inline-block;
            margin-top: 18px;
            padding: 12px 22px;
            background: #2196f3;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #1976d2;
        }

        footer {
            background: #0d0d0d;
            color: #777;
            text-align: center;
            padding: 20px;
            font-size: 14px;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div>
            <h1>About Me</h1>
            <nav>
                <a href="./index.jsp">Home</a>|
                <a href="./about.jsp">About</a>|
                <a href="./projects.jsp">Projects</a>|
                <a href="./contacts.jsp">Contacts</a>
            </nav>
        </div>
    </header>

    <!-- About Section -->
    <section>
        <div class="about-container">
            <div class="profile-img">
                <img src="image/img56.jpg" alt="My Profile Picture">
            </div>
            <div class="about-text">
                <h2>Hello, I'm Keshav Meena</h2>
                <p>
                    I am a passionate <b>Java Developer</b> with experience in 
                    <b>Spring Boot, Servlets, JSP, MySQL</b>.  
                    I enjoy building scalable applications and solving complex 
                    backend problems. Currently working on projects like 
                    <i>Job Portal, Mini Task Manager, and Portfolio Website</i>.
                </p>
                <a href="resume/KeshavNewResume.pdf" class="btn" download>📄 Download Resume</a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 My Portfolio. All rights reserved.</p>
    </footer>
</body>
</html>
