package kz.kanglybay.javaEE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/addItem")
public class AddItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/addItem.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/addItem?error";
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String deadlineDate = req.getParameter("deadlineDate");

        Item item = new Item();
        item.setName(name);
        item.setDescription(description);
        item.setDeadlineDate(deadlineDate);
        item.setStatus(false);

        DBManager.addItem(item);

        redirect="/home";
        resp.sendRedirect(redirect);
    }
}
