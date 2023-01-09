package com.sm.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import com.sm.account.AccountDAO;
=======
import com.sm.master.DAO_Master;
>>>>>>> a3292ed48985a75c4fed14f85715ea960c61cf68

@WebServlet("/HC")
public class HC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD
	
// <<<<<<< HEAD
		AccountDAO.loginCheck(request);
// =======
// >>>>>>> 61b613e8ac67b05cefaf624c7461c272a9c854f8
	
		request.getRequestDispatcher("jsp/home.jsp").forward(request, response);
=======
		
		DAO_Master.getAllProduct(request);
		request.setAttribute("contentPage", "jsp/home.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
>>>>>>> a3292ed48985a75c4fed14f85715ea960c61cf68
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
