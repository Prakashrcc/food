package foodbridge.pks;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class deleteDishController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/deleteDish")
	public String func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		String dishId=request.getParameter("dishId");
		
		String query="delete  from dishes where id=?";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, dishId);
		int count=preparedStatement.executeUpdate();
		System.out.println(count);
		
		
		return "vendorMenu";
	}

}
