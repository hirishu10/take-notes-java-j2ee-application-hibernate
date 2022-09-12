package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.NoteConfig;
import com.factoryHelper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateNoteServlet
 */
public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();

		try {

			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			String nTitle = request.getParameter("note_title");
			String nDescription = request.getParameter("note_desc");

			if (nTitle.length() > 0 && nDescription.length() > 0) {

				Session session = FactoryProvider.getInstance().openSession();

				NoteConfig newNoteConfig = session.get(NoteConfig.class, noteId);// Get old data and then change the
																					// data
				newNoteConfig.setNoteTitle(nTitle);
				newNoteConfig.setNoteDesc(nDescription);
				newNoteConfig.setCreateDate(new Date());

				Transaction transaction = session.beginTransaction();

				session.update(newNoteConfig);

				transaction.commit();
				session.close();

				response.sendRedirect("showNote.jsp");

//				FactoryProvider.closeFactory();

			} else {
				response.sendError(500);
			}

		} catch (Exception e) {

			e.printStackTrace();
			response.sendError(500);
		}
	}

}
