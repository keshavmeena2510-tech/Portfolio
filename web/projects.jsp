<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Projects - My Portfolio</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #121212;
            color: #e0e0e0;
        }

        header {
            background: url('image/img3.jpg') no-repeat center center/cover;
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

        .project {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .project-card {
            background: #1e1e1e;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.6);
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .project-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 6px 16px rgba(0,0,0,0.7);
        }

        .project-card h3 a {
            text-decoration: none;
            font-size: 24px;
            color: #90caf9;
        }
        .project-card p {
            font-size: 15px;
            color: #ccc;
            line-height: 1.5;
        }
        .tech {
            font-size: 14px;
            color: #aaa;
            margin-top: 12px;
        }

        footer {
            background: #0d0d0d;
            color: #777;
            text-align: center;
            padding: 20px;
            font-size: 14px;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div>
            <h1>My Projects</h1>
            <nav>
                <a href="./index.jsp">Home</a>|
                <a href="./about.jsp">About Me</a>|
                <a href="./contacts.jsp">Contacts</a>|
            </nav>
        </div>
    </header>

    <!-- Projects Section -->
    <section>
        <div class="project">
            <div class="project-card">
                <h3><a href="jobPortal.jsp">Job Portal</a></h3>
                <p>A web-based platform where job seekers can apply for jobs and companies can post openings.</p>
                <p class="tech">Technologies: Java, JSP, Servlets, MySQL</p>
            </div>
            <div class="project-card">
                <h3><a href="MiniTaskManager.jsp">Mini Task Manager</a></h3>
                <p>A simple task manager to create, update, delete, and track tasks efficiently.</p>
                <p class="tech">Technologies: Java, Servlets, JDBC</p>
            </div>
            <div class="project-card">
                <h3><a href="PortFolio.jsp">Portfolio Website</a></h3>
                <p>A personal portfolio showcasing my skills, projects, and contact information.</p>
                <p class="tech">Technologies: HTML, CSS, JSP</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 My Portfolio. All rights reserved.</p>
    </footer>
</body>
</html>
