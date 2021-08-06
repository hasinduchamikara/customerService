package com.payment;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;

public class PaymentDbUtil {
	
	private static boolean PaymentSuccessful;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet r = null;
	
	public static boolean insertpayment(String uid, String email, String packtype, String cardno, String cvc, String paymethod) {
		
		boolean PaymentSuccessful = false;
		
		try {
			con = DbConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into paymentmethod values ('"+uid+"','"+email+"','"+packtype+"','"+cardno+"','"+cvc+"','"+paymethod+"')";
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
				PaymentSuccessful = true;
			}
			else {
				PaymentSuccessful = false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return PaymentSuccessful;
	}
	
	
	public static boolean validate (String uid){	
		
		int convertedID = Integer.parseInt(uid);
		
		try {
			con = DbConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from paymentmethod where uid='"+convertedID+"'";
			r = stmt.executeQuery(sql);
			
				if(r.next()) {
					PaymentSuccessful = true;
				}
				else {
					PaymentSuccessful = false;
				}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return PaymentSuccessful;
	}
	
	public static boolean updateuser(String id, String email, String pack, String cardno, String cvc, String pmeth) {
		
		try {
			
			con = DbConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update paymentmethod set email='"+email+"',packtype='"+pack+"',cardno='"+cardno+"',cvc='"+cvc+"',paymethod='"+pmeth+"'"
					+ "where uid='"+id+"'";
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
				PaymentSuccessful = true;
			}
			else {
				PaymentSuccessful = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return PaymentSuccessful;
	}
	
public static List<paymentview> getUserDetails(String uid){
	
		int convertedID = Integer.parseInt(uid);
		
		ArrayList<paymentview> pay = new ArrayList<>();
		
		try {
			con = DbConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from paymentmethod where uid='"+convertedID+"'";
			r = stmt.executeQuery(sql);
			
			while(r.next()) {
				int userId = r.getInt(1);
				String email = r.getString(2);
				String packtype  = r.getString(3);
				String cardno = r.getString(4);
				String cvc = r.getString(5);
				String paymethod = r.getString(6);
				
				paymentview p = new paymentview(uid,email,packtype,cardno,cvc,paymethod);
				pay.add(p);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pay;
	}

public static boolean deletepaymethod(String id) {
	
	int conId = Integer.parseInt(id);
	
	try {
		con = DbConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from paymentmethod where uid='"+conId+"'";
		int res = stmt.executeUpdate(sql);
		
		if(res > 0) {
			PaymentSuccessful = true;
		}
		else {
			PaymentSuccessful = false;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return PaymentSuccessful;
}

}




