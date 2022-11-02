package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserDao;
import model.Users;

/**
 * Servlet implementation class SelvletLogin
 */
@WebServlet(urlPatterns = { "/SelvletLogin" })
public class SelvletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");
		String use = request.getParameter("username");
		String pass = request.getParameter("password");
		UserDao dao = new UserDao();
		Users users = dao.cheacked(use, pass);
		if (action.equals("Login")) {
			if (users != null || use == "" || pass == "") {
				// ("/video-management.jsp").forward(request, response);
				HttpSession session = request.getSession();
				session.setAttribute("mess", use);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
				dispatcher.forward(request, response);
				/* neu users =null thi bao loi */
			} else {
				if (users == null) {
					HttpSession session = request.getSession();
					session.setAttribute("error", "Wrong password!");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
					dispatcher.forward(request, response);
				}
				if (action.equals("Logout")) {
					HttpSession session = request.getSession();
					session.invalidate();
					RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
					dispatcher.forward(request, response);
				}

			}
		}

	}

}
