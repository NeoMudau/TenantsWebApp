package za.ac.tut.web;

import za.ac.tut.utils.DatabaseService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;

public class ViewTenantServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Map<String, String>> tenants = new ArrayList<>();

        try (Connection conn = DatabaseService.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM tenants")) {

            while (rs.next()) {
                Map<String, String> tenant = new HashMap<>();
                tenant.put("id", String.valueOf(rs.getInt("tenant_id")));
                tenant.put("name", rs.getString("name"));
                tenant.put("email", rs.getString("email"));
                tenant.put("phone", rs.getString("phone_number"));
                tenant.put("apartment", rs.getString("apartment_number"));
                tenants.add(tenant);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("tenants", tenants);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewTenant.jsp");
        dispatcher.forward(request, response);
    }
}
