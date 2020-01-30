package pks.foodbridge.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register_user_dao {
	
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	public int register_user(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		
		String name=request.getParameter("name").toString();
		String phone=request.getParameter("phone").toString();
		String password=request.getParameter("password").toString();
		String email=request.getParameter("email").toString();
		
		String query="insert into userDetails(name,pass,phone,role,email) values(?,?,?,?,?)";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, name);
		preparedStatement.setString(2, password);
		preparedStatement.setString(3, phone);
		preparedStatement.setString(4, "2");
		preparedStatement.setString(5, email);
		int count=preparedStatement.executeUpdate();
		
		return count;
		
		
	}

}
