package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Film;
import database.FilmDAO;

@WebServlet("/insert")
public class InsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public InsertServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Insert.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            insertFilm(request, response);
        } catch (NumberFormatException nfe) {
            request.getSession().setAttribute("errorMessage", "Error: Invalid input for year.");
            response.sendRedirect("Insert.jsp"); // Redirect back to the form page with an error message
        } catch (Exception ex) {
            request.getSession().setAttribute("errorMessage", "An error occurred: " + ex.getMessage());
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.sendRedirect("Insert.jsp"); // Redirect back to the form page with a general error message
        }
    }

    private void insertFilm(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Retrieve film data from request parameters
        String title = request.getParameter("title");
        int year = Integer.parseInt(request.getParameter("year")); // This could throw NumberFormatException
        String director = request.getParameter("director");
        String stars = request.getParameter("stars");
        String review = request.getParameter("review");

        // Create Film object
        Film film = new Film();
        film.setTitle(title);
        film.setYear(year);
        film.setDirector(director);
        film.setStars(stars);
        film.setReview(review);

        // Insert film into database
        FilmDAO filmDAO = FilmDAO.getInstance(); // Correct use of Singleton
        filmDAO.insertFilm(film);

        // Return success response
        request.getSession().setAttribute("successMessage", "Insert action was successful!");
        response.sendRedirect("/CloudEE/home?success=Insert action was successful!"); // Ensure this URL is correct
    }
}
