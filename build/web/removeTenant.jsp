<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Remove Tenant</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0fff0;
            color: #2e8b57;
            padding: 20px;
        }
        form {
            margin: 20px auto;
            width: 300px;
        }
        input, button {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            font-size: 16px;
        }
        button {
            background-color: #32CD32;
            color: white;
            border: none;
            border-radius: 5px;
        }
        button:hover {
            background-color: #228B22;
        }
    </style>
</head>
<body>
    <h1>Remove Tenant</h1>
    <form method="POST" action="RemoveTenantServlet.do">
        <input type="text" name="id" placeholder="Tenant ID" required>
        <button type="submit">Remove Tenant</button>
    </form>
</body>
</html>
