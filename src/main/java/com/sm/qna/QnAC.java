package com.sm.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.account.AccountDAO;

@WebServlet("/QnAC")
public class QnAC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		DAO_QnA.getAllqna(request);
		DAO_QnA.qnaPaging(Integer.parseInt(request.getParameter("p")), request);
		
		AccountDAO.loginCheck(request);
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/qna/qna.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DAO_QnA.regReply(request);
		DAO_QnA.getReply(request);
		DAO_QnA.getQna(request);
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/qna/qnadetail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
