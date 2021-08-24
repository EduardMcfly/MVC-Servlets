package mvc.controllers;

import java.awt.HeadlessException;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import mvc.db.DBConnection;
import mvc.models.Cliente;

/**
 *
 * @author andre
 */
public class ListController extends HttpServlet {

    private Connection con = null;

    public ListController() {
        this.con = DBConnection.getConnection();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = String.valueOf(req.getParameter("action"));
        String view = "views/list.jsp";

        if (action.equalsIgnoreCase("delete")) {
            String id = req.getParameter("userId");
            String sql = "DELETE FROM clients WHERE id = ?";
            try {
                try (PreparedStatement p2 = con.prepareStatement(sql)) {
                    p2.setString(1, id);
                    p2.executeUpdate();
                }

            } catch (HeadlessException | SQLException ex) {
                System.out.println("Hay un error " + ex.getMessage());
            }
        }
        try {
            ArrayList<Cliente> array = Cliente.findAll();
            System.out.println(array);
            req.setAttribute("users", array);
        } catch (SQLException e) {
            System.out.println(e.getStackTrace());
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(view);
        requestDispatcher.forward(req, resp);
    }

}
