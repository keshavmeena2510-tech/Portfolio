<%-- 
    Document   : miniTaskManager
    Created on : 30 Aug, 2025
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mini Task Manager</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background: #121212;
                color: #e0e0e0;
                line-height: 1.6;
            }
            header{
                background: #1e1e1e;
                padding: 25px 20px;
                text-align: center;
                box-shadow: 0 2px 5px rgba(0,0,0,0.5);
            }
            header h1{
                 margin: 0;
                 font-size: 28px;
                 color: #90caf9;
                 letter-spacing: 1px;
            }
            nav {
                margin-top: 10px;
            }
            nav a{
                text-decoration: none;
                color: #fff;
                margin: 0 12px;
                font-size: 17px;
                transition: color 0.3s ease;
            }
            nav a:hover {
                color: #90caf9;
            }
            .container{
                max-width: 1000px;
                margin: auto;
                padding: 40px 20px;
            }
            .section{
                margin-bottom: 40px;
            }
            .section h2{
                color: #64b5f6;
                margin-bottom: 12px;
                font-size: 22px;
                border-bottom: 2px solid #64b5f6;
                display: inline-block;
                padding-bottom: 5px;
            }
            ul{
                line-height: 1.8;
                margin-left: 20px;
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
                font-weight: bold;
                transition: 0.3s ease;
            }
            a.back:hover {
                text-decoration: underline;
                letter-spacing: 0.5px;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>Mini Task Manager</h1>
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
                    The Mini Task Manager is a simple project that allows users to manage their daily tasks efficiently. 
                    It provides basic CRUD operations (Create, Read, Update, Delete) and helps users track tasks as pending or completed.
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
                    <li>Designed and developed the application using Java, Servlets, and JSP following the MVC architecture.</li>
                    <li>Implemented CRUD operations (Add, View, Update, Delete) for task management.</li>
                    <li>Integrated the project with MySQL/Oracle database using JDBC for data storage and retrieval.</li>
                    <li>Created user-friendly JSP pages for smooth task interaction.</li>
                    <li>Tested all modules to ensure proper functionality and error handling.</li>
                </ul>
            </div>
            <div class="section">
                <h2>Key Features</h2>
                <ul>
                    <li>Add new tasks</li>
                    <li>View all tasks in a list</li>
                    <li>Update existing tasks</li>
                    <li>Delete tasks</li>
                    <li>Mark tasks as completed or pending</li>
                </ul>
            </div>
            <a href="projects.jsp" class="back">← Back To Projects</a>
        </div>
        <footer>
            <p>&copy; 2025 My Portfolio. All rights reserved.</p>
        </footer>
    </body>
</html>
