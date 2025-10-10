<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Java App</title>
    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #00c6ff 0%, #0072ff 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }
        .card {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            text-align: center;
            padding: 40px 30px;
            width: 420px;
            animation: fadeIn 1.2s ease-in-out;
        }
        h1 {
            color: #0078D7;
            margin-bottom: 10px;
            font-size: 26px;
        }
        h2 {
            color: #444;
            font-size: 20px;
            margin-top: 0;
        }
        p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .highlight {
            font-weight: bold;
            color: #0078D7;
        }
        a {
            background-color: #0078D7;
            color: #fff;
            text-decoration: none;
            padding: 10px 18px;
            border-radius: 6px;
            transition: 0.3s;
        }
        a:hover {
            background-color: #005fa3;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .emoji {
            font-size: 40px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="emoji">🚀</div>
        <h1>Registration Successful!</h1>
        <h2>Welcome to <span class="highlight">Java App</span> with MySQL DB Config 🎯</h2>
        <p>Your account has been created successfully. You can now log in and explore the app.</p>
        <a href="index.jsp">Go to Login →</a>
    </div>
</body>
</html>

