package aws;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;
import java.io.*;
import java.util.*;
public class arffAppend {

	

	
		
		public static void main(String[] args){
			
			String dbName = "RAKRetail";
			  String userName = "root";
			  String password = "rootcmpe239";
			  String hostname = "mydb.cywdpaibvs3l.us-west-2.rds.amazonaws.com";
			  String port = "3306";
			  String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;
			  
			
			  try {
				  Connection conn = null;
				  PreparedStatement preparedStmt = null;
			    conn = DriverManager.getConnection(jdbcUrl);
			    
			  
			    String requestLastTransaction= "select t1.* from RAKRetail.retail_transactions t1 where trans_id = (select max(t2.trans_id) from RAKRetail.retail_transactions t2);";
				
			    preparedStmt = conn.prepareStatement(requestLastTransaction);
				ResultSet rs = preparedStmt.executeQuery();
				String tempArffString=null;
				
				while (rs.next()) {
					tempArffString = rs.getString("GreenTea") + ',' +
							rs.getString("Butter") + ',' +
							rs.getString("ThermalWear") + ',' +
							rs.getString("HandBags") + ',' +
							rs.getString("BathroomCleaner") + ',' +
							rs.getString("Umbrella") + ',' +
							rs.getString("Coffee") + ',' +
							rs.getString("Egg") + ',' +
							rs.getString("Socks") + ',' +
							rs.getString("Water") + ',' +
							rs.getString("Kettle") + ',' +
							rs.getString("Bacon") + ',' +
							rs.getString("Swimsuit") + ',' +
							rs.getString("Sugar") + ',' +
							rs.getString("Fruits") + ',' +
							rs.getString("Wine") + ',' +
							rs.getString("Soda") + ',' +
							rs.getString("Sprayer") + ',' +
							rs.getString("Stationary") + ',' +
							rs.getString("ShavingCream") + ',' +
							rs.getString("FluMedicine") + ',' +
							rs.getString("HosePipe") + ',' +
							rs.getString("RainBoots") + ',' +
							rs.getString("Milk") + ',' +
							rs.getString("CannedBeer") + ',' +
							rs.getString("CleaningBrush") + ',' +
							rs.getString("TentSupply") + ',' +
							rs.getString("HandSanitizer") + ',' +
							rs.getString("Detergents") + ',' +
							rs.getString("Hats") + ',' +
							rs.getString("SunShades") + ',' +
							rs.getString("IceCream") + ',' +
							rs.getString("KitchenCleaner") + ',' +
							rs.getString("ShampooConditioner") + ',' +
							rs.getString("FlipFlops") + ',' +
							rs.getString("Curd") + ',' +
							rs.getString("SunscreenLotion") + ',' +
							rs.getString("Flour") + ',' +
							rs.getString("Gloves") + ',' +
							rs.getString("MosquitoRepellant") + ',' +
							rs.getString("Cheese") + ',' +
							rs.getString("Bread") + ',' +
							rs.getString("Moisturizer") + ',' +
							rs.getString("Diaper") + ',' +
							rs.getString("SportsWear") + ',' +
							rs.getString("Vegetables") + ',' +
							rs.getString("Wipes") + ',' +
							rs.getString("PottedPlants") + ',' +
							rs.getString("ShowerGel") + ',' +
							rs.getString("PartyDecorations") + ',' +
							rs.getString("Weather");
				}
				
				String newArffString1 = tempArffString.replaceAll("0", "?");
				String newArffString2 = newArffString1.replaceAll("1", "t");
				System.out.println(tempArffString);
				System.out.println(newArffString1);
				System.out.println(newArffString2);
				//filepath="/usr/share/tomcat7/webapps/ROOT/RAK_Retailtemp.arff";

				try(PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("/NextBasketItem_Final/RAK_Retailtemp.arff", true)))) {
				    out.println(newArffString2);
				    System.out.println(out);
				}catch (IOException e) {
				    //exception handling left as an exercise for the reader
				}
				
			} catch (Exception e) {
				System.out.println("Exception in SQL Retrieval::"+e.getMessage());
				e.printStackTrace();
				} 
			  
			  File f = new File("/NextBasketItem_Final/RAK_Retailtemp.arff");
			  try{
			      Scanner scanner = new Scanner(f);
			      while (scanner.hasNextLine()) {
			          String line = scanner.nextLine();
			          System.out.println(line);
			      }
			      scanner.close();
			  } catch (FileNotFoundException e) {
			      e.printStackTrace();
			  }
			  System.exit(0); // terminate the program
			  }
				
		}


