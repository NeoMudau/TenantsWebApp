package za.ac.tut.web;

import za.ac.tut.utils.DatabaseService;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditTenantServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String apartmentNumber = request.getParameter("apartmentNumber");

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = DatabaseService.getConnection();
            String sql = "UPDATE tenants SET name = ?, email = ?, phone_number = ?, apartment_number = ? WHERE tenant_id = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phoneNumber);
            ps.setString(4, apartmentNumber);
            ps.setInt(5, id);

            ps.executeUpdate();
            response.sendRedirect("editTenantOutcome.jsp");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("editTenantOutcome.jsp");
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
