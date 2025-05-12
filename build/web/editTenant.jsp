
<%@ page import="javax.ejb.EJB" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Tenant</title>
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
    <h1>Edit Tenant</h1>
    <form method="POST" action="EditTenantServlet.do">
        <input type="text" name="id" placeholder="Tenant ID" required>
        <input type="text" name="name" placeholder="Name">
        <input type="email" name="email" placeholder="Email">
        <input type="text" name="phoneNumber" placeholder="Phone Number">
        <input type="text" name="apartmentNumber" placeholder="Apartment Number">
        <button type="submit">Edit Tenant</button>
    </form>
</body>
</html>
