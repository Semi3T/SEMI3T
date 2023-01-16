package com.sm.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QnaPassckC")
public class QnaPassckC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DAO_QnA.passCk(request);
		
		if (request.getParameter("pw").equals(request.getAttribute("dbpw"))) {
			DAO_QnA.getQna(request);
			request.setAttribute("contentPage", "jsp/qna/qnadetail.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			DAO_QnA.getAllqna(request);
			DAO_QnA.qnaPaging(1, request);
			request.setAttribute("contentPage", "jsp/qna/qna.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
