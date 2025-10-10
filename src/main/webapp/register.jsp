<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
        }
        .form-container {
            width: 400px;
            margin: 80px auto;
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
        }
        th {
            text-align: center;
            padding-bottom: 10px;
        }
        td {
            padding: 8px;
        }
        input[type=text], input[type=password] {
            width: 95%;
            padding: 6px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type=submit], input[type=reset] {
            padding: 6px 12px;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type=submit]:hover, input[type=reset]:hover {
            background-color: #0056b3;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <form method="post" action="userRegistration.jsp">
            <table border="0" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstName" required></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastName" required></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" required></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userName" required></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit"></td>
                        <td><input type="reset" value="Reset"></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;">
                            Already registered? <a href="index.jsp">Login Here</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>

