package foodbridge.pks;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class addDishController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/addDish")
	public String func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		String dishName=request.getParameter("dishName").toString();
		String description=request.getParameter("description").toString();
		String price=request.getParameter("price").toString();
		String category=request.getParameter("category").toString();
		
		String query="insert into dishes(chefid,dishName,dishDetails,dishPrice,category,status) values(?,?,?,?,?,?)";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, id);
		preparedStatement.setString(2, dishName);
		preparedStatement.setString(3, description);
		preparedStatement.setString(4, price);
		preparedStatement.setString(5, category);
		preparedStatement.setString(6, "0");
		int count=preparedStatement.executeUpdate();
		System.out.println(count);
		
		return "vendorMenu";
	}

}
