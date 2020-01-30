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
public class cancelOrder {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("cancelOrder")
	public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		String transId=request.getParameter("transId");
		String status="Cancelled by Chef";
		String query="update transactions set transStatus=? where transId=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1,status );
		st.setString(2,transId);
		int count=st.executeUpdate();
		
		return "dashboard";
	}

}
