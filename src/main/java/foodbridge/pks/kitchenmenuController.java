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
public class kitchenmenuController {
	String url="jdbc:mysql://localhost:3306/foodbridge_database";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/kitchenmenu")
	public void func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		String chefid=request.getParameter("id").toString();
		String kitchen_name=request.getParameter("kitchen_name").toString();
		String descriptions=request.getParameter("descriptions");
		String address=request.getParameter("address").toString();
		String kitchen_picture=request.getParameter("kitchen_picture");
		String rating=request.getParameter("rating").toString();
		

		String query="select * from dishes where chefid=? and status=1 ";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, chefid);
		
		ResultSet rd=st.executeQuery();
				
		request.setAttribute("chefid", chefid);
		request.setAttribute("kitchen_name", kitchen_name);
		request.setAttribute("rating", rating);
		request.setAttribute("descriptions",descriptions);
		request.setAttribute("address", address);
		request.setAttribute("kitchen_picture", kitchen_picture);
		request.setAttribute("rd", rd);
		request.getRequestDispatcher("kitchenmenu.jsp").forward(request, response);
	}

}
