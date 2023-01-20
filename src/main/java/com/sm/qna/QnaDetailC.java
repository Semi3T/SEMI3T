package com.sm.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.account.AccountDAO;

@WebServlet("/QnaDetailC")
public class QnaDetailC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		DAO_QnA.getQna(request);
		DAO_QnA.getReply(request);
		
		AccountDAO.loginCheck(request);
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/qna/qnadetail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
