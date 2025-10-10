<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Java MySQL App</title>
    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #00c6ff 0%, #0072ff 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            padding: 40px 35px;
            width: 360px;
            text-align: center;
            animation: fadeIn 1.2s ease-in-out;
        }

        h2 {
            color: #0078D7;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        label {
            font-weight: 600;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 15px;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #0078D7;
            box-shadow: 0 0 5px rgba(0, 120, 215, 0.5);
            outline: none;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #0078D7;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 15px;
            cursor: pointer;
            transition: 0.3s;
            width: 48%;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #005fa3;
        }

        .register-link {
            margin-top: 20px;
            display: block;
            color: #0078D7;
            text-decoration: none;
            font-weight: 500;
        }

        .register-link:hover {
            text-decoration: underline;
        }

        .emoji {
            font-size: 40px;
            margin-bottom: 10px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="emoji">🔐</div>
        <h2>Login to Java App</h2>
        <form method="post" action="login.jsp">
            <div class="form-group">
                <label for="userName">Username</label>
                <input type="text" id="userName" name="userName" required />
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required />
            </div>

            <div class="btn-container">
                <input type="submit" value="Login" />
                <input type="reset" value="Reset" />
            </div>
        </form>

        <a class="register-link" href="register.jsp">📝 New User? Register Here</a>
    </div>
</body>
</html>

