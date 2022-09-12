package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.NoteConfig;
import com.factoryHelper.FactoryProvider;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		try {

//			out.println("<script>");
//			out.println("alert('Are you sure want to delete');");
//			out.println("</script>");

			int noteId = Integer.parseInt(request.getParameter("noteId").trim());

			Session deleteSession = FactoryProvider.getInstance().openSession();

			Transaction deleteTransaction = deleteSession.beginTransaction();

			NoteConfig deleteNote = (NoteConfig) deleteSession.get(NoteConfig.class, noteId);

			deleteSession.delete(deleteNote);

			deleteTransaction.commit();

			deleteSession.close();

			response.sendRedirect("showNote.jsp");

		} catch (Exception e) {
			e.printStackTrace();
			response.sendError(500);
		}
	}
}
