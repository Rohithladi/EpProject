package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DBUtil;

@WebServlet("/fetchExpenses")
@MultipartConfig
public class FetchExpensesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Expense> expenses = new ArrayList<>(); 

        String sql = "SELECT date, description, amount, category FROM expenses";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next())
          {
                Expense expense = new Expense();
                expense.setDate(rs.getString("date"));
                expense.setDescription(rs.getString("description"));
                expense.setAmount(rs.getDouble("amount"));
                expense.setCategory(rs.getString("category"));
                expenses.add(expense);
            }
        } catch (SQLException e) {
            // Handle exception, e.g., log error or display error message
            e.printStackTrace();
            request.setAttribute("error", "Error fetching expenses: " + e.getMessage());
        }

        request.setAttribute("expenses", expenses);
        request.getRequestDispatcher("viewExpenses.jsp").forward(request, response);
    }
}