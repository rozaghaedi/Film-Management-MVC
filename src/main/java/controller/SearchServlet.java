package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import database.FilmDAO;
import model.Film;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");

        try {
            if (id != null && !id.isEmpty()) {
                getFilmById(request, response);
            } else if (title != null && !title.isEmpty()) {
                searchFilm(request, response);
            } else {
                getAllFilms(request, response);
            }
        } catch (NumberFormatException ex) {
            log("Invalid ID format: ", ex);
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid ID format");
        } catch (Exception ex) {
            log("Internal server error: ", ex);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal server error: " + ex.getMessage());
        }
        }

    private void getAllFilms(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        FilmDAO filmDAO = FilmDAO.getInstance();
        ArrayList<Film> films = filmDAO.getAllFilms();
        request.setAttribute("filmArray", films);
        request.getRequestDispatcher("home").forward(request, response);
    }

    private void getFilmById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        FilmDAO filmDAO = FilmDAO.getInstance();
        Film film = filmDAO.getFilmByID(id);
        sendResponse(response, film);
    }

    private void searchFilm(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String title = request.getParameter("title");
        FilmDAO filmDAO = FilmDAO.getInstance();
        ArrayList<Film> searchResults = filmDAO.searchFilm(title);
        request.setAttribute("filmArray", searchResults);
        request.setAttribute("search", title);
        request.getRequestDispatcher("Film.jsp").forward(request, response);
    }

    private void sendResponse(HttpServletResponse response, Object data) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        if (data != null) {
            out.print(new Gson().toJson(data));
        } else {
            out.print("{}"); // Send empty object or other appropriate response
        }
        out.flush();
    }}