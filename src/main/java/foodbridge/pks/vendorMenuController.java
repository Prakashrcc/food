package foodbridge.pks;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class vendorMenuController {
	
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/vendorMenu")
	public void func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		System.out.println(id);
		String query="select * from dishes where chefid=?";
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println(id);
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement pr=con.prepareStatement(query);
		pr.setString(1, id);
		ResultSet rd=pr.executeQuery();
		
		
		request.setAttribute("rd", rd);
		request.getRequestDispatcher("vendorMenu.jsp").forward(request, response);
		
		
	}

}
