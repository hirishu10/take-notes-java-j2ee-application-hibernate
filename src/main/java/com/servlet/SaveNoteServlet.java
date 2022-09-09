package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.NoteConfig;
import com.factoryHelper.FactoryProvider;


/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		try {

			String nTitle = request.getParameter("note_title");
			String nDescription = request.getParameter("note_desc");

			if (nTitle.length() > 0 && nDescription.length() > 0) {

				NoteConfig noteConfig = new NoteConfig();
				noteConfig.setNoteTitle(nTitle);
				noteConfig.setNoteDesc(nDescription);
				noteConfig.setCreateDate(new Date());

				Session session = FactoryProvider.getInstance().openSession();
				Transaction transaction = session.beginTransaction();
				
				session.save(noteConfig);
				
				transaction.commit();
				session.close();
//				FactoryProvider.closeFactory();

			} else {
				out.println("<h1>Something went wrong please check and try again.</h1>");
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
