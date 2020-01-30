package foodbridge.pks;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.protocol.Resultset;

@Controller
public class placeOrderController {
	String url="jdbc:mysql://localhost:3306/foodBridge_database	";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("placeOrder")
	public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		Enumeration<String> enumeration=request.getParameterNames();
		Map<String,Object> umap=new HashMap<>();
		while(enumeration.hasMoreElements()) {
			
			String inputnames=enumeration.nextElement();
			umap.put(inputnames,request.getParameter(inputnames));
		}
		String chefId=null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		for( String key: umap.keySet()) {
			
			String itemDetails=umap.get(key).toString();
			if(itemDetails!="no" && !key.equals("totalPrice")) {
				String query="select * from dishes where id=?";
				PreparedStatement st=con.prepareStatement(query);
				String itemId=itemDetails.substring(0,6);
				st.setString(1,itemId );
				ResultSet r=st.executeQuery();
				r.next();
				chefId=r.getString(2);
				break;
			}
		}
		
		String totalPrice=request.getParameter("totalPrice").toString();
		HttpSession session=request.getSession();
		String id=session.getAttribute("id").toString();
		
		SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date date=new Date();
		String transDateTime=formatter.format(date);
		
		//insertion of transaction
		String query="insert into transactions (customerId,transPrice,transStatus,transDateTime,chefId) values(?,?,?,?,?)";
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, id);
		preparedStatement.setString(2, totalPrice);
		preparedStatement.setString(3, "Ordered");
		preparedStatement.setString(4, transDateTime);
		preparedStatement.setString(5, chefId);
		
		int count=preparedStatement.executeUpdate();
		if(count>0) {
			query="select transId from transactions where customerId=? and transDateTime=?";
			PreparedStatement preparedStatement1=con.prepareStatement(query);
			preparedStatement1.setString(1, id);
			preparedStatement1.setString(2, transDateTime);
			
			ResultSet rd=preparedStatement1.executeQuery();
			rd.next();
			String transId=rd.getString(1);
			
		
		
		for( String key: umap.keySet()) {
			System.out.println(key+" : "+umap.get(key));
			String itemDetails=umap.get(key).toString();
			if(itemDetails!="no" && !key.equals("totalPrice")) {
				String itemId=itemDetails.substring(0,6);
				String itemQuantity=itemDetails.substring(7,itemDetails.length());
				
				query="select * from dishes where id=?";
				PreparedStatement preparedStatement3=con.prepareStatement(query);
				preparedStatement3.setString(1, itemId);
				ResultSet rd1=preparedStatement3.executeQuery();
				rd1.next();
				String itemPrice=rd1.getString(5);
				String itemName=rd1.getString(3);
				
				
				
				
				System.out.println(itemId+"  : "+itemQuantity);
				query="insert into transactinDishes (transId,dishId,quantity,price,dishName) values(?,?,?,?,?)";
				PreparedStatement preparedStatement2=con.prepareStatement(query);
				preparedStatement2.setString(1, transId);
				preparedStatement2.setString(2, itemId);
				preparedStatement2.setString(3, itemQuantity);
				preparedStatement2.setString(4, itemPrice);
				preparedStatement2.setString(5, itemName);
				
				
				int count1=preparedStatement2.executeUpdate();
				if(count1>0) {
					
					
					
				}
				
				
				
				
				
				
			}
		}
		System.out.println("Success order placed");
		return "orderConfirmation";
		
		
		
		
		
		}
		
	/*	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement preparedStatement=con.prepareStatement(query);
		preparedStatement.setString(1, name);
		preparedStatement.setString(2, password);
		preparedStatement.setString(3, phone);
		preparedStatement.setString(4, "2");
		preparedStatement.setString(5, email);
		int count=preparedStatement.executeUpdate(); */
		
		
		
	return "cart";	
	}
}
