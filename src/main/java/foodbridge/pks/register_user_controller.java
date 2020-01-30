package foodbridge.pks;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pks.foodbridge.dao.register_user_dao;

@Controller
public class register_user_controller {
	
	@RequestMapping("/register_user")
	public String add_user(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		
		register_user_dao func=new register_user_dao();
		int count=func.register_user(request, response);
		
		
		return "index.jsp";
		
	}

}
