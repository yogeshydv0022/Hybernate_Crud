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
 * Servlet implementation class addnoteServlet
 */
public class addnoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addnoteServlet() {
        super();
      
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");  
		
		String title=request.getParameter("note_title");
		String content=request.getParameter("note_content");
		
		
		Note note=new Note(title,content,new Date());
		
		Session s=factoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		s.save(note);
		tx.commit();
		s.close();
		out.println("<h1>Note Is Added<h1>");
		out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a><h1>");
		out.println("<h1 style='text-align:center;'><a href='addNote.jsp'>Add new Note</a><h1>");
		
		System.out.println(note.getId() +" "+note.getTitle());
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
