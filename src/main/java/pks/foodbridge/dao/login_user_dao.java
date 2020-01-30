package pks.foodbridge.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login_user_dao {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	public ResultSet login(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		
		String query="select * from userDetails where phone=? and pass=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement pr=con.prepareStatement(query);
		pr.setString(1, phone);
		pr.setString(2, password);
		ResultSet rd=pr.executeQuery();
		if(rd.next()) {
			HttpSession ses=request.getSession();
			ses.setAttribute("id", rd.getString(1));
			ses.setAttribute("name", rd.getString(2));
			ses.setAttribute("phone", rd.getString(4));
			ses.setAttribute("role", rd.getString(5));
			ses.setAttribute("email", rd.getString(6));
			ses.setAttribute("address", rd.getString(7));
			System.out.println("Success");
		}
		else {
			System.out.println("Failure");
		}
		return rd;
	}
}
