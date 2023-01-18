package com.sm.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PwfindC")
public class PwfindC extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/account/pwfind.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		AccountDAO.findPw(request);
		if (request.getAttribute("pwresult") != null) {

			request.setAttribute("headerPage", "jsp/header.jsp");
			request.setAttribute("contentPage", "jsp/account/findpwresult.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);

		} else {

			request.setAttribute("headerPage", "jsp/header.jsp");
			request.setAttribute("contentPage", "jsp/account/pwfind.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);

		}

	}

}
