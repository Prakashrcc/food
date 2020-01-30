package foodbridge.pks;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pks.foodbridge.dao.login_user_dao;

@Controller

public class login_user_controller {
	@RequestMapping("/login_user")
	public void login_user(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		login_user_dao dao=new login_user_dao();
		ResultSet rd=dao.login(request, response);
		rd.next();
		HttpSession ses=request.getSession();
		String x=ses.getAttribute("role").toString();
		
		System.out.println(x);
		request.setAttribute("rd", rd);
		if(x.equals("3")) {
			request.getRequestDispatcher("dashboard").forward(request, response);
		}
		else {
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
	}

}
