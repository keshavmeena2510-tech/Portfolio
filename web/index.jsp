<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Portfolio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #121212;
            color: #e0e0e0;
            line-height: 1.6;
        }

        /* Header */
        header {
            background: url('image/img2.jpg') no-repeat center center/cover;
            height: 320px;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
        }
        header::after {
            content: "";
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.65);
        }
        .header-content {
            position: relative;
            z-index: 1;
        }
        header h1 {
            font-size: 42px;
            margin-bottom: 10px;
        }
        header p {
            font-size: 18px;
            color: #ddd;
            margin-bottom: 20px;
        }

        /* Navbar */
        nav {
            margin-top: 15px;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
            font-weight: 500;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #90caf9;
        }

        /* Sections */
        section {
            padding: 60px 20px;
            max-width: 1100px;
            margin: auto;
        }
        section h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            color: #90caf9;
        }
        section p {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
            color: #ccc;
        }

        /* Button */
        .btn {
            display: inline-block;
            background: #2196f3;
            color: #fff;
            padding: 10px 22px;
            border-radius: 25px;
            font-size: 16px;
            text-decoration: none;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #1976d2;
        }

        /* Projects */
        .projects {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 25px;
        }
        .project-card {
            background: #1e1e1e;
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            transition: transform 0.2s, background 0.3s;
        }
        .project-card a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            font-weight: 500;
        }
        .project-card:hover {
            transform: translateY(-8px);
            background: #2a2a2a;
        }

        /* Contact */
        .contact-card {
            background: #1e1e1e;
            padding: 30px;
            border-radius: 12px;
            max-width: 700px;
            margin: auto;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        form input, form textarea {
            padding: 12px;
            border: none;
            border-radius: 6px;
            background: #2c2c2c;
            color: #eee;
            font-size: 15px;
        }
        form input:focus, form textarea:focus {
            outline: 2px solid #90caf9;
        }
        form button {
            padding: 12px;
            background: #2196f3;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s;
        }
        form button:hover {
            background: #1976d2;
        }

        /* Footer */
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
        <div class="header-content">
            <h1>Welcome to My Portfolio</h1>
            <p>Java Developer | Spring Boot | JSP & Servlets</p>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="about.jsp">About Me</a>
                <a href="projects.jsp">Projects</a>
                <a href="contacts.jsp">Contact</a>
            </nav>
        </div>
    </header>

    <!-- About -->
    <section id="about">
        <h2>About Me</h2>
        <p>
            I am a passionate Java Developer with 2 years of experience in 
            Servlets, JSP, Spring Boot, and SQL.
        </p>
        <div style="text-align:center;">
            <a href="about.jsp" class="btn">Read More</a>
        </div>
    </section>

    <!-- Projects -->
    <section id="projects">
        <h2>Projects</h2>
        <div class="projects">
            <div class="project-card"><a href="jobPortal.jsp">Job Portal</a></div>
            <div class="project-card"><a href="MiniTaskManager.jsp">Mini Task Manager</a></div>
            <div class="project-card"><a href="PortFolio.jsp">Portfolio Website</a></div>
        </div>
    </section>

    <!-- Contact -->
    <section id="contact">
        <h2>Contact Me</h2>
        <div class="contact-card">
            <form action="" method="post">
                <input type="text" name="name" placeholder="Your Name" required />
                <input type="email" name="email" placeholder="Your Email" required />
                <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
                <button type="submit">Send</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 My Portfolio. All rights reserved.</p>
    </footer>
</body>
</html>
