<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Me</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #121212;
            color: #e0e0e0;
        }
        header {
            background: url('image/img2.jpg') no-repeat center center/cover;
            height: 200px;
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
            color: #90caf9;
            font-size: 36px;
        }
        nav {
            margin-top: 10px;
            position: relative;
            z-index: 1;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
            transition: color 0.2s;
        }
        nav a:hover {
            color: #90caf9;
        }
        section {
            padding: 40px 20px;
            max-width: 800px;
            margin: auto;
        }
        .card {
            background: #1e1e1e;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.6);
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
        form button {
            padding: 12px;
            background: #2196f3;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        form button:hover {
            background: #1976d2;
        }
        .msg-success {
            background: #2e7d32;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 15px;
            text-align: center;
            color: #fff;
        }
        .msg-error {
            background: #c62828;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 15px;
            text-align: center;
            color: #fff;
        }
        footer {
            background: #0d0d0d;
            color: #777;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <header>
        <div>
            <h1>Contact Me</h1>
            <nav>
                <a href="index.jsp">Home</a>|
                <a href="about.jsp">About Me</a>|
                <a href="projects.jsp">Projects</a>|
                <a href="contacts.jsp">Contact</a>
            </nav>
        </div>
    </header>

    <section>
        <div class="card">
            <h2>Get in Touch</h2>

            <% if(request.getParameter("success") != null){ %>
                <div class="msg-success">✅ Your message has been sent successfully!</div>
            <% } else if(request.getParameter("error") != null){ %>
                <div class="msg-error">❌ Something went wrong, please try again.</div>
            <% } %>

            <form action="./contactServlet" method="post">
                <input type="text" name="name" placeholder="Your Name" required />
                <input type="email" name="email" placeholder="Your Email" required />
                <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
                <button type="submit">Send</button>
            </form>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 My Portfolio. All rights reserved.</p>
    </footer>
</body>
</html>
