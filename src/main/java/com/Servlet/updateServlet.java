package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.Note;
import com.helper.factoryProvider;

/**
 * Servlet implementation class updateServlet
 */
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");  
			
			String title=request.getParameter("note_title");
			String content=request.getParameter("note_content");
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			
			
			
			Session s=factoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();

			Note note=s.get(Note.class,noteId);
			
			note.setTitle(title);
			note.setContent(content);
			note.setAdddate(new Date());
			
			
			tx.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
			
		}catch (Exception e) {
			
		}
	}

}
