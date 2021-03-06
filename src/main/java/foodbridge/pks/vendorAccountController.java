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
public class vendorAccountController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	
	
	@RequestMapping("/vendorAccount")
	public void func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		
		System.out.println("vendor:"+id);
		
		String query="select * from chef_details where id=?";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, id);
		System.out.println("this is done");
		ResultSet rd=st.executeQuery();
		System.out.println("this is done");
		rd.next();
		System.out.println("this isalso done");
		System.out.println(rd.getString(2));
		request.setAttribute("rd", rd);
		request.getRequestDispatcher("vendorAccount.jsp").forward(request, response);
		
	}

}
