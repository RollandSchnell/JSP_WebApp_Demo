package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.MailService;

/**
 * Servlet implementation class MailServlet
 */
@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sendfrom = request.getParameter("email");		
		String name = request.getParameter("name");	
		String message = request.getParameter("message");
		
		MailService mailservice = new MailService();		
		String result = mailservice.sendEmail(sendfrom,name,message);
		System.out.println(sendfrom + " " + name + " "+ message+ " "+result);
		
		
        HttpSession session = request.getSession(true);
		
		session.setAttribute("result", result);
		RequestDispatcher dispatcher = request.getRequestDispatcher("contact.jsp");
		dispatcher.forward(request, response);
	}

}
