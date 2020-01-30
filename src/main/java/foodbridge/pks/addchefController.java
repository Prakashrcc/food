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

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class addchefController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/addchef")
public void func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
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
		preparedStatement.setString(4, "3");
		preparedStatement.setString(5, email);
		int count=preparedStatement.executeUpdate();
		if(count>0) {
			 query="select id from userDetails where phone=? and pass=?";
			 preparedStatement=con.prepareStatement(query);
				preparedStatement.setString(1, phone);
				preparedStatement.setString(2, password);
				ResultSet rd=preparedStatement.executeQuery();
				rd.next();
				String id=rd.getString(1);
				
				 query="insert into chef_details values(?,?,?,?,?,?)";
			
			String kitchenname=request.getParameter("kitchen_name").toString();
			String descriptions=request.getParameter("descriptions").toString();
			String kitchenpicture=request.getParameter("kitchen-picture").toString();
			String address=request.getParameter("address").toString();
			
			 preparedStatement=con.prepareStatement(query);
				preparedStatement.setString(1, id);
				preparedStatement.setString(2, kitchenname);
				preparedStatement.setString(3, "5");
				preparedStatement.setString(4, kitchenpicture);
				preparedStatement.setString(5, descriptions);
				preparedStatement.setString(6, address);
				 count=preparedStatement.executeUpdate();
		}

	//	request.setAttribute("rd", rd);
	//	request.getRequestDispatcher("kitchens.jsp").forward(request, response);
		
	}
}
