<%-- 
    Document   : jobPortal
    Created on : 29 Aug, 2025, 9:35:39 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job Portal Project</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                font-family: Arial,sans-serif;
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
            }
            nav a{
                text-decoration: none;
                color: #fff;
                margin: 0 15px;
                font-size: 18px;
                
            }
             nav a:hover {
            color: #90caf9;
        }
        .container{
            max-width: 1000px;
            margin: auto;
            padding: 30px 20px;
        }
        .section{
            margin-bottom: 30px;
        }
        .section h2{
            color: #64b5f6;
            margin-bottom: 10px;
        }
        ul{
            line-height: 1.8;
        }
         footer {
            background: #0d0d0d;
            color: #777;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
        a.back {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 18px;
    background: #2196f3;
    color: white;
    border-radius: 6px;
    text-decoration: none;
    transition: background 0.3s;
}
a.back:hover {
    background: #1976d2;
}
        </style>
    </head>
    <body>
        <header>
            <h1>Job Portal System</h1>
            <nav>
                <a href="index.jsp">Home</a>|
                <a href="projects.jsp">Projects</a>|
                <a href="about.jsp">About</a>|
                <a href="contacts.jsp">Contact</a>
            </nav>
        </header>
        <div class="container">
            <div class="section">
                <h2>Project Overview</h2>
                <p>
                The Job Portal is a web-based platform designed to connect job seekers and companies. 
                Job seekers can browse and apply for jobs, while companies can register and post job openings. 
                An admin module is provided to manage users, jobs, and applications effectively.
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
                <li>Designed and implemented database schema with tables (Users, Jobs, Companies, Applications)</li>
                <li>Developed backend functionalities using Servlets & JDBC</li>
                <li>Created separate modules for Job Seeker, Company, and Admin</li>
                <li>Implemented CRUD operations for job postings and applications</li>
                <li>Built Admin Dashboard to manage users and jobs</li>
            </ul>
            </div>
            <div class="section">
            <h2>Key Features</h2>
            <ul>
                <li>Job seekers can register, log in, and apply for jobs</li>
                <li>Companies can post jobs and view applications</li>
                <li>Admin can manage (Add/Edit/Delete) jobs and users</li>
                <li>Secure authentication for users and companies</li>
                <li>Dynamic job listing with search & filter</li>
            </ul>
            </div>
            <a href="projects.jsp" class="back">Back To Projects</a>
        </div>
        <footer>
            <p>&copy; 2025 My Portfolio. All rights reserved.</p>
        </footer>
    </body>
</html>
