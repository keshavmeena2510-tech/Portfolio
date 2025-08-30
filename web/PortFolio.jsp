<%-- 
    Document   : portfolio
    Created on : 29 Aug, 2025, 9:35:39 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portfolio Website</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background: #121212;
                color: #e0e0e0;
            }
            header{
                background: #1e1e1e;
                padding: 20px;
                text-align: center;
            }
            header h1{
                margin: 0;
                color: #90caf9;
                font-size: 28px;
                letter-spacing: 1px;
            }
            nav {
                margin-top: 10px;
            }
            nav a{
                text-decoration: none;
                color: #fff;
                margin: 0 10px;
                font-size: 17px;
            }
            nav span {
                color: #555;
            }
            nav a:hover {
                color: #90caf9;
            }
            .container{
                max-width: 1000px;
                margin: auto;
                padding: 30px 20px;
                line-height: 1.6;
            }
            .section{
                margin-bottom: 30px;
            }
            .section h2{
                color: #64b5f6;
                margin-bottom: 12px;
                font-size: 22px;
            }
            .section p {
                font-size: 16px;
                color: #ccc;
            }
            ul{
                line-height: 1.9;
                padding-left: 20px;
            }
            ul li {
                margin-bottom: 6px;
            }
            footer {
                background: #0d0d0d;
                color: #777;
                text-align: center;
                padding: 15px;
                margin-top: 40px;
                font-size: 14px;
            }
            a.back {
                display: inline-block;
                margin-top: 20px;
                color: #90caf9;
                text-decoration: none;
                font-size: 15px;
            }
            a.back:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>Portfolio Website</h1>
            <nav>
                <a href="index.jsp">Home</a><span>|</span>
                <a href="projects.jsp">Projects</a><span>|</span>
                <a href="about.jsp">About</a><span>|</span>
                <a href="contacts.jsp">Contact</a>
            </nav>
        </header>
        <div class="container">
            <div class="section">
                <h2>Project Overview</h2>
                <p>
                    The Portfolio Website is a personal website built to showcase my skills, projects, and achievements. 
                    It highlights my professional profile, provides project details, and offers a way for recruiters or clients to connect with me.
                </p>
            </div>
            <div class="section">
                <h2>Technology Used</h2>
                <ul>
                    <li>Java (JDK 11+)</li>
                    <li>JSP & Servlets</li>
                    <li>SQL Database</li>
                    <li>JDBC for Database Connectivity</li>
                    <li>HTML, CSS for frontend</li>
                    <li>NetBeans IDE</li>
                </ul>
            </div>
            <div class="section">
                <h2>My Responsibilities</h2>
                <ul>
                    <li>Designed and developed a fully responsive personal portfolio website.</li>
                    <li>Created sections like Home, About, Projects, and Contact to present information clearly.</li>
                    <li>Implemented clean UI/UX design for better user experience.</li>
                    <li>Showcased multiple projects with descriptions and technology stack.</li>
                    <li>Ensured responsiveness across different devices.</li>
                </ul>
            </div>
            <div class="section">
                <h2>Key Features</h2>
                <ul>
                    <li>Home page with introduction and summary</li>
                    <li>Projects section to showcase work</li>
                    <li>About Me section with skills & background</li>
                    <li>Contact form for easy communication</li>
                </ul>
            </div>
            <a href="projects.jsp" class="back">Back To Projects</a>
        </div>
        <footer>
            <p>&copy; 2025 My Portfolio. All rights reserved.</p>
        </footer>
    </body>
</html>
