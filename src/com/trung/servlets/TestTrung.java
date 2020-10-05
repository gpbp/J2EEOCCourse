package com.trung.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trung.beans.Author;

/**
 * Servlet implementation class TestTrung
 */
@WebServlet("/TestTrung")
public class TestTrung extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestTrung() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = "Bonjour Je m'appelle Trung";
		request.setAttribute("message", message);
		String heure = "nuit";
		String name = request.getParameter("name");
		request.setAttribute("heure", heure);
		request.setAttribute("name", name);
		Author author = new Author();
		author.setFirstName("Trung");
		author.setLastName("Pham");
		author.setActive(false);
		request.setAttribute("author", author);
		String[] messages = {"l'étranger", "Meursault", "Albert Camus"};
		request.setAttribute("messages", messages);
		this.getServletContext().getRequestDispatcher("/WEB-INF/hello.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
