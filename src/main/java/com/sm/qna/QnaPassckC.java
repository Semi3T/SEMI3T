package com.sm.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sm.account.Account;
import com.sm.account.AccountDAO;

@WebServlet("/QnaPassckC")
public class QnaPassckC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("account");
				
		if (a != null) {
			if (a.getL_id().equals("master")) {
				DAO_QnA.getQna(request);
				DAO_QnA.getReply(request);
				request.setAttribute("headerPage", "jsp/header.jsp");
				request.setAttribute("contentPage", "jsp/qna/qnadetail.jsp");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			} else {
				request.setAttribute("headerPage", "jsp/header.jsp");
				request.setAttribute("contentPage", "jsp/qna/qnaconfirm.jsp");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("headerPage", "jsp/header.jsp");
			request.setAttribute("contentPage", "jsp/qna/qnaconfirm.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DAO_QnA.passCk(request);
		
		if (request.getParameter("pw").equals(request.getAttribute("dbpw"))) {
			DAO_QnA.getQna(request);
			DAO_QnA.getReply(request);
			AccountDAO.loginCheck(request);
			request.setAttribute("headerPage", "jsp/header.jsp");
			request.setAttribute("contentPage", "jsp/qna/qnadetail.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			DAO_QnA.getAllqna(request);
			DAO_QnA.qnaPaging(1, request);
			AccountDAO.loginCheck(request);
			request.setAttribute("invalid", "비밀번호가 일치하지 않습니다.");
			request.setAttribute("headerPage", "jsp/header.jsp");
			request.setAttribute("contentPage", "jsp/qna/qnaconfirm.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
