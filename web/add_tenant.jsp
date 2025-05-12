<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Tenant</title>
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
    <h1>Add Tenant</h1>
    <form method="POST" action="AddTenantServlet.do">
        <input type="text" name="name" placeholder="Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="phoneNumber" placeholder="Phone Number" required>
        <input type="text" name="apartmentNumber" placeholder="Apartment Number" required>
        <button type="submit">Add Tenant</button>
    </form>
</body>
</html>
