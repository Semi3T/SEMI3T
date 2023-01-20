package com.sm.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.master.DAO_Master;

@WebServlet("/CommentController")
public class CommentController extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 화면을 깜빡 하나요?
		if(request.getParameter("c_content") == null) {
			// delete 수행
			DAO_Master.deletecomment(request);
		} else {
			DAO_Master.updatecomment(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
