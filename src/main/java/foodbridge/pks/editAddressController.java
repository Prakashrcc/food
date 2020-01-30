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
public class editAddressController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/editAddress")
	public String func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		
		
		String flatNo=request.getParameter("flatNo");
		String streetName=request.getParameter("streetName");
		String city=request.getParameter("city");
		String pincode=request.getParameter("pincode");
		String near=request.getParameter("near");
		String address=flatNo+" "+streetName+" "+city+"-"+pincode+" near "+near;
		
		
		String query="update userdetails set address=? where id=? ";
		System.out.println(query);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		st.setString(1, address);
		st.setString(2, id);
		
		int count=st.executeUpdate();
		System.out.println(count);
		if(count>0) {
			session.removeAttribute("address");
			session.setAttribute("address", address);
		}
		
		
		return "cart.jsp";
		
		
		
	}

}
