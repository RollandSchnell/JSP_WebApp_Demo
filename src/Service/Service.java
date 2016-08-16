package Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.json.*;


public class Service { 

	
	static final String DB_URL = "jdbc:mysql://localhost:80/calorieking";   
    static final String USER = "root";
	static final String PASS = "devilboy";
	
	ArrayList<String> list = new ArrayList<String>();
	
	
	public void connect() {
		
		 try {
				
			    Class.forName("com.mysql.jdbc.Driver");
			    
				Connection myConn = DriverManager.getConnection(DB_URL,USER,PASS);
				
				Statement myStmt = myConn.createStatement();
				
				ResultSet myRs = myStmt.executeQuery("select foodname from foods");
				
				while (myRs.next()) {
			
					list.add(myRs.getString("foodname"));
				}
				
				
			}
			catch(Exception e) {
			
				
				e.printStackTrace();
				
			}

	
}
	
	public JSONObject foodMacros(String food) {
		
		
		JSONObject temp = new JSONObject();
		
		try {
			
		      Connection myConn = DriverManager.getConnection(DB_URL,USER,PASS);
		
		      Statement myStmt = myConn.createStatement();
		
		      ResultSet myRs = myStmt.executeQuery("select * from foods where foodname like "+ "'"+food+"';");
		    
		          
		            while(myRs.next()) {
		            	
		            	temp.put("food", food);
		            	temp.put("calories", myRs.getString("calories"));
		            	temp.put("protein", myRs.getString("protein"));
		            	temp.put("carbs", myRs.getString("carbs"));
		            	temp.put("fat", myRs.getString("fat"));
		            	
		 	
			
		            }
		           
		} catch(Exception e) {
			
			
		}
		
		return temp;
		
	}
	
	public JSONObject searchFood(String food) {
		
		JSONObject err = new JSONObject();
		
		try {
			err.put("error","No such food found");
		} catch (JSONException e) {
			
			e.printStackTrace();
		}
		
		if(list.contains(food)) {
			return foodMacros(food);
		} else return err;
	}
	

	
}
