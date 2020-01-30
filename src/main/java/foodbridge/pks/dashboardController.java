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
public class dashboardController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	
	@RequestMapping("/dashboard")
	public void func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		
		String query="select * from dishes where chefid=? and status=1";
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println(id);
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement pr=con.prepareStatement(query);
		pr.setString(1, id);
		ResultSet rd=pr.executeQuery();
		
		
		
		
		query="select * from transactions where chefId=?  and transStatus=? or transStatus=? or transStatus=?  order by transDateTime ";
		PreparedStatement pr1=con.prepareStatement(query);
		pr1.setString(1, id);
		pr1.setString(2, "Ordered");
		pr1.setString(3, "Preparing");
		pr1.setString(4, "Prepared");
		
		ResultSet rd1=pr1.executeQuery();
		request.setAttribute("rd1", rd1);
		
		
		query="select * from chef_details where id=?";
		
		PreparedStatement pr2=con.prepareStatement(query);
		pr2.setString(1, id);
		
		
		ResultSet rd2=pr2.executeQuery();
		rd2.next();
		System.out.println(rd2.getString(7));
		
		request.setAttribute("rd2", rd2);
		
		
		
		request.setAttribute("rd", rd);
		
		request.getRequestDispatcher("dashboard.jsp").forward(request, response);
		
	}

}
