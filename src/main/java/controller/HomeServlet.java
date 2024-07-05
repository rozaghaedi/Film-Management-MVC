package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.FilmDAO;
import model.Film;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public HomeServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
        FilmDAO filmDAO = FilmDAO.getInstance();
        ArrayList<Film> films = filmDAO.getAllFilms();
        request.setAttribute("filmArray", films);

        // Forward the request to home.jsp
        request.getRequestDispatcher("Film.jsp").forward(request, response);
    	   } catch (Exception e) {
    	        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Server Error");
    	    }
    	}
}

