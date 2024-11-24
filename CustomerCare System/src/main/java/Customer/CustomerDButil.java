package Customer;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import Customer.Customer;
import Customer.DBconnect;

//Utility class to handle database operations for customers
public class CustomerDButil {
	
	private static Connection con = null;
	private static Statement stmt = null; 
	private static  ResultSet rs = null;
 
 // Method to validate customer login credentials (email and password)
 public static List<Customer> Validate(String email, String password) {
     // Create an empty list to store customer details
     ArrayList<Customer> cus = new ArrayList<>();
     
     try {
         
         con = DBconnect.getConnection();
         stmt = con.createStatement();
         // SQL query to check if a customer exists with the given email and password
         String sql = "SELECT * FROM customer WHERE email ='" + email + "' AND password = '" + password + "'";
         rs = stmt.executeQuery(sql); // Execute the query and get the result set 
         
         // If a matching record is found, retrieve customer details
         if (rs.next()) {
             // Extract customer details from the result set
             int id = rs.getInt(1);  // Customer ID
             String firstname = rs.getString(2);  // First name
             String lastname = rs.getString(3);  // Last name
             String email1 = rs.getString(4);  // Email
             String phone = rs.getString(5);  // Phone number
             String password1 = rs.getString(6);  // Password
             
             // Create a new Customer object with the retrieved details
             Customer c = new Customer(id, firstname, lastname, email1, phone, password1);
             
             // Add the customer object to the list
             cus.add(c);
         }
         
         // Close the result set, statement, and connection to free up resources
         rs.close();
         stmt.close();
         con.close();
         
     } catch (Exception e) {
         // Print any error messages to the console
         e.printStackTrace();
     }
     
     // Return the list of customers (empty if no match was found)
     return cus; 
 }
 
 //cutomer register
 public static boolean registerCustomer(String firstname, String lastname, String email, String phone, String password ) {
 	boolean isSuccess = false;
     
     try {
     	con = DBconnect.getConnection();
         stmt = con.createStatement();
         String sql = "INSERT INTO customer VALUES (0, '"+firstname+"', '"+lastname+"','"+email+"', '"+phone+"', '"+password+"')";
         int rs = stmt.executeUpdate(sql);
         
         if (rs > 0) {
         	isSuccess = true;
         }
         
         else {
         	isSuccess = false;
         }
     }
     
     catch (Exception e) {
     	e.printStackTrace();
     }
 	
 	return isSuccess;
 }
 
 //update customer
 public static boolean updateCustomer (String id, String firstname, String lastname, String email, String phone, String password) {
	 boolean isSuccess = false;
	 
	 try {
		 con = DBconnect.getConnection();
         stmt = con.createStatement();
         String sql = "UPDATE customer SET firstname = '"+firstname+"', lastname = '"+lastname+"', email='"+email+"', phone = '"+phone+"', password = '"+password+"'"
         		+ " WHERE cid = '"+id+"'  ";
         int rs = stmt.executeUpdate(sql); 
         
         if (rs>0) {
        	 isSuccess = true;
         }
         
         else {
        	 isSuccess = false;
         }
	 }
	 
	 catch (Exception e) {
		 e.printStackTrace();
	 }
	
	 
	 return isSuccess;
 }
 
 //delete customer
 public static boolean deleteCustomer (String id) {
	 boolean isSuccess = false;
	 
	 int convId = Integer.parseInt(id); //convert string id into integer
	 
	 try {
		 con = DBconnect.getConnection();
         stmt = con.createStatement();
         String sql = "DELETE FROM customer WHERE cid = '"+convId+"'";
         int rs = stmt.executeUpdate(sql);
         
         if(rs > 0) {
        	 isSuccess = true;
         }
         
         else {
        	 isSuccess = false;
         }
	 }
	 
	 catch(Exception e) {
		 
	 }
	 
	 return isSuccess;
 }
 
//Method to create a new ticket
 public static boolean createTicket(String subject, String description, String date, int customerId) throws SQLException {
     boolean isSuccess = false;

     try {
         // Get database connection
         con = DBconnect.getConnection();

         // SQL query to insert a new ticket
         String sql = "INSERT INTO ticket (subject, description, createddate, cid) VALUES (?, ?, ?, ?)";

         // Prepare the SQL statement
         PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
         pstmt.setString(1, subject);
         pstmt.setString(2, description);
         pstmt.setString(3, date); // Assuming `date` is passed as a valid string format 'YYYY-MM-DD'
         pstmt.setInt(4, customerId);

         // Execute the update and check if rows were affected
         int result = pstmt.executeUpdate();

         if (result > 0) {
             isSuccess = true;
         }

     } catch (SQLException e) {
         e.printStackTrace();
         throw e;
     } finally {
         if (con != null) {
             try {
                 con.close(); // Close the connection to free up resources
             } catch (SQLException e) {
                 e.printStackTrace();
             }
         }
     }

     return isSuccess;
 }
 

}