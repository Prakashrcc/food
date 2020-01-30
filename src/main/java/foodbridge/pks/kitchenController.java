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
public class kitchenController {
	String url="jdbc:mysql://localhost:3306/foodbridge_database";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/kitchen")
	public void func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		
		
		String query="select * from chef_details";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		
		
		ResultSet rd=st.executeQuery();
		
		
				

		request.setAttribute("rd", rd);
		request.getRequestDispatcher("kitchens.jsp").forward(request, response);
		
	}

}
