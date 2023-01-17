package com.sm.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QnaDeleteC")
public class QnaDeleteC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		DAO_QnA.deleteQna(request);
		DAO_QnA.deleteAllreply(request);
		DAO_QnA.getAllqna(request);
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/qna/qna.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
