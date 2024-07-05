package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import database.FilmDAO;


@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	    	deleteFilm(request, response);    	
	    } catch (Exception ex) {
	        response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
	    }
	}
	private void deleteFilm(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    int id = Integer.parseInt(request.getParameter("id"));
	    FilmDAO filmDAO = FilmDAO.getInstance();
	    filmDAO.deleteFilm(id);
	    
        request.getSession().setAttribute("successMessage", "Delete action was successful!");
        response.sendRedirect("/CloudEE/home?success=Delete action was successful!");
	}
	
}
