package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DBUtil;


@WebServlet("/AddExpenseServlet")
@MultipartConfig
public class AddExpenseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String date = request.getParameter("date");
        String description = request.getParameter("description");
        String amount = request.getParameter("amount");
        String category = request.getParameter("category");

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO expenses (date, description, amount, category) VALUES (?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, date);
                stmt.setString(2, description);
                stmt.setString(3, amount);
                stmt.setString(4, category);
                stmt.executeUpdate();
            }
            request.setAttribute("message", "Expense added successfully!");
            request.getRequestDispatcher("Expense.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error adding expense. Please try again.");
            request.getRequestDispatcher("Expense.jsp").forward(request, response);
        }
    }
}
