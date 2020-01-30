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
import org.springframework.web.servlet.DispatcherServlet;

@Controller
public class orderConfirmationController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/orderConfirmation")
	public void func(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
		
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
String query="select * from transactions where customerId=? order by transDateTime desc";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, id);
		System.out.println("this is done");
		ResultSet rd=st.executeQuery();
		
		
		request.setAttribute("rd", rd);
		request.getRequestDispatcher("orderConfirmation.jsp").forward(request, response);
	}

}
