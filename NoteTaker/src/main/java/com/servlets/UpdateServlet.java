package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			//title, content fetch
			int noteId = Integer.parseInt(request.getParameter("noteId"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			
			//Saving object using hibernate
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			//now will fetch Note object having id as fetch by form
			Note note = s.get(Note.class, noteId);
			
			//updating content
			note.setAddedDate(new Date());
			note.setContent(content);
			note.setTitle(title);
			
			tx.commit();
			s.close();//session is not thread safe, so it is best when closed
			
			//Message on browser
			response.sendRedirect("all_notes.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
