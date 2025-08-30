<%-- 
    Document   : FrontPage
    Created on : 30 Aug, 2025, 2:05:17 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                padding: 0;
                margin: 0;
                font-family: Arial,sans-serif;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                background-image:url('image/img12.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            }
            .overlay{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0,0,0,0.6);
            }
            .content{
                position: relative;
                z-index: 1;
                text-align: center;
                color: #fff;
                margin-top: -150px;
            }
            h1{
                font-size: 6rem;
                margin-bottom: 20px;
                letter-spacing: 2px;
            }
            .btn{
                padding: 12px 30px;
                font-size: 18px;
                border: none;
                border-radius: 25px;
                 background: #ff6600;
                 color: white;
                 text-decoration: none;
                 transition: 0.3s ease;
                 cursor: pointer;
            }
            .btn:hover {
            background: #e65c00;
        }
        </style>
            
    </head>
    <body>
        <div class="overlay"></div>
        <div class="content"> 
            <h1>My Portfolio</h1>
            <a href="index.jsp" class="btn">Get Started</a>
            </div>
    </body>
</html>
