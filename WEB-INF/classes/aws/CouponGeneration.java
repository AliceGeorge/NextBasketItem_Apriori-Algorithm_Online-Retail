package aws;



import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.security.KeyStore.Entry;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;

public class CouponGeneration {
	public static void main(String[] args){
   
	
}
	
	public String getCouponsed(String filepath,String[] basketItem)
	{
		String couponItem= "";
		int size = basketItem.length;
		System.out.println("Size:"+size);
		for (int i=0; i<size; i++)
	    {
	      System.out.println("Item Selected:"+basketItem[i]);
	      couponItem=couponItem+getCoupons1(filepath,basketItem[i]);
	    }
	  
	 
		
		return couponItem;
	}
	
//THis is used when the data file with rules need to predefined	
public String getCoupons1(String filepath,String basketItem)
{
	String couponItem= "initial,";
	int couponlength = 0;
	HashMap<String, Integer> itemMap = new HashMap<String, Integer>();
	ValueComparator bvc =  new ValueComparator(itemMap);
    TreeMap<String,Integer> sorted_map = new TreeMap<String,Integer>(bvc);
	Set associationSet = new HashSet();
	String tempStr;
	//String searchItem = "GreenTea";
	String searchItem =basketItem;
	char[] lineArray;
	char temp;
	char tempItem[] = new char[50];
	int i,j,k=0,val = 0;
	Scanner file = null;
	try {
		//file = new Scanner(new File("C:\\Kayal\\239\\file.txt"));
		//file = new Scanner(new File("tial.txt"));
		InputStream csv=BakeryAssociation.class.getResourceAsStream("couponRule.txt");
		//InputStream csv=BakeryAssociation.class.getResourceAsStream(filepath);
		BufferedReader reader = new BufferedReader(new InputStreamReader(csv)); 
		StringBuilder out = new StringBuilder();
	       String line;
	       while ((line = reader.readLine()) != null) {
	    	
	    	   //Adding kayal's code
	    	   if(line.indexOf("==>") != -1)
	           {
	               if(line.indexOf(searchItem) != -1){
	               	//System.out.println(line);
	               	lineArray = line.toCharArray();
	               	for(i=0; i<lineArray.length;i++){
	               		if(lineArray[i]=='=' && lineArray[i+1]=='t'){
	               			j=i-1;
	               			
	               			while(lineArray[j] != ' '){
	               				//System.out.println(lineArray[j]);
	               				tempItem[k] = lineArray[j];
	               				k++;
	               				j--;
	               				
	               			}
	               			int begin = 0;
	               			int end = (tempItem.length)-1;
	               			
	               			while (end > begin){
	               				temp = tempItem[begin];
	               				tempItem[begin] = tempItem[end];
	               				tempItem[end] = temp;
	               				
	               				begin++;
	               				end--;
	               				
	               			}
	               			//System.out.println(tempItem);
	               			tempStr = new String(tempItem);
	               			//System.out.println(tempStr.trim() +"****" +searchItem.trim());
	               			//System.out.println(tempStr.trim().equals(searchItem.trim())  );
	               			//if (!tempStr.trim().equals(searchItem.trim())){
	               				
	               				associationSet.add(tempStr.trim());
	               				itemMap.put(tempStr.trim(), val++);
	               			//}
	               			//val = itemMap.get(tempStr.trim());
	               			
	               			
	               		}
	               		k=0;
	               		j=0;
	               		tempItem = new char[50];
	               	}
	                   //System.out.println(lineArray.length);
	               	//val++;
	               }
	           }
	               
	       }
	       if(val == 0)
	       {
	           System.out.println("Word does not exist");
	       }
	       
	       couponItem="";
	           
	          //System.out.println(associationSet);     
	          System.out.println(itemMap);
	          
	          sorted_map.putAll(itemMap);
	          System.out.println(sorted_map);
	          //int couponlength = 0;
	          couponlength = (sorted_map.size()< 11)? sorted_map.size() : 11;
	          for(int cnt = 0; cnt < couponlength; cnt++){
	       	   
	              java.util.Map.Entry<String, Integer> e = sorted_map.pollFirstEntry();
	              String itemName = e.getKey();
	              int popularity = e.getValue();
	              if (!(e.getKey().equals(searchItem)))
	              {
	              System.out.println(itemName+"---"+popularity);
	              
	              
	              if(cnt==couponlength)
	            	  couponItem = couponItem+ itemName; 
	              else
	              couponItem = couponItem+itemName+",";
	              
	              //couponItem.concat((itemName.trim()+",")); 
	             /* if(cnt==1)
	              {
	           	   couponItem = itemName;
	              }*/
	             
	              
	          }
	    	   
	    	   //Commenting it out
	           // out.append(line);
	       }

		    System.out.println(couponItem);
		/*if(reader==null)
		{
			return "error";
		}
		*/
		
		
		//String AbsolutePath = new File("").getAbsolutePath();
		
		
		/*String file = application.getRealPath("/");
		  String jspPath = this.getServletContext().getRealPath("/");
		  String txtFilePath = jspPath + System.getProperty("file.separator")+ "weather.arff";
		  BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));*/
		
	} catch (Exception e) {
			// TODO Auto-generated catch block
		e.printStackTrace();
		//return(e.printStackTrace(););
		return (e.getMessage()+"Error thrown: ");
	}

  

       return  couponItem  ;
}




public String getCoupons_modified(String filepath,String basketItem) throws Exception
{
	String finalString1 = "initial";
	BufferedReader in = new BufferedReader
	        (new FileReader(filepath.trim()));
	        String str;
	        while ((str = in.readLine()) != null) 
	        {
	        	finalString1=finalString1+str;
	        }
	       
	in.close();
	//return (finalString1);
	return (filepath+" "+basketItem);
}



public String getCoupons_String(String data,String basketItem) throws Exception
{
	
	PrintWriter toFile=null;
	
	boolean fileOpened = true;

	try {
	     toFile = new PrintWriter("paper.txt");
	} // end try

	catch (FileNotFoundException e) {
	       fileOpened = false;      
	    // Error Message saying file could not be opened        
	} // end catch

	if(fileOpened){
	    toFile.println(data);
	    toFile.close();
	}
	
	
	String finalString="base";
	//Read
	String fileName = "paper.txt"; // file to be opened

	try {
	    Scanner fileData = new Scanner(new File(fileName));

	    while(fileData.hasNextLine()){
	        String line = fileData.nextLine();
	        line = line.trim();
	        finalString=finalString+line;

	        if("".equals(line)){
	            continue;
	        } // end if

	    } // end while

	    fileData.close(); // close file
	}  // end try

	catch (FileNotFoundException e) {
	    // Error message    
	} // end catch
	
	
	return finalString;
	
	
	
}





public String getCoupons(String filepath,String basketItem)
{
	String finalString1="initial";
	String couponItem= "initial,";
	
	filepath="/usr/share/tomcat7/webapps/ROOT/output1.txt";
	basketItem="GreenTea";
	int couponlength = 0;
	HashMap<String, Integer> itemMap = new HashMap<String, Integer>();
	ValueComparator bvc =  new ValueComparator(itemMap);
    TreeMap<String,Integer> sorted_map = new TreeMap<String,Integer>(bvc);
	Set associationSet = new HashSet();
	String tempStr;
	//String searchItem = "GreenTea";
	String searchItem =basketItem;
	char[] lineArray;
	char temp;
	char tempItem[] = new char[50];
	int i,j,k=0,val = 0;
	int count=0;
	Scanner file = null;
	try {
		
		BufferedReader in = new BufferedReader
		        (new FileReader(filepath));
		        String line;
		        while ((line = in.readLine()) != null) 
		        {
		        	count++;
		        	  //Adding kayal's code
			    	   if(line.indexOf("==>") != -1)
			           {
			               if(line.indexOf(searchItem) != -1){
			               	//System.out.println(line);
			               	lineArray = line.toCharArray();
			               	for(i=0; i<lineArray.length;i++){
			               		if(lineArray[i]=='=' && lineArray[i+1]=='t'){
			               			j=i-1;
			               			
			               			while(lineArray[j] != ' '){
			               				//System.out.println(lineArray[j]);
			               				tempItem[k] = lineArray[j];
			               				k++;
			               				j--;
			               				
			               			}
			               			int begin = 0;
			               			int end = (tempItem.length)-1;
			               			
			               			while (end > begin){
			               				temp = tempItem[begin];
			               				tempItem[begin] = tempItem[end];
			               				tempItem[end] = temp;
			               				
			               				begin++;
			               				end--;
			               				
			               			}
			               			//System.out.println(tempItem);
			               			tempStr = new String(tempItem);
			               			//System.out.println(tempStr.trim() +"****" +searchItem.trim());
			               			//System.out.println(tempStr.trim().equals(searchItem.trim())  );
			               			//if (!tempStr.trim().equals(searchItem.trim())){
			               				
			               				associationSet.add(tempStr.trim());
			               				itemMap.put(tempStr.trim(), val++);
			               			//}
			               			//val = itemMap.get(tempStr.trim());
			               			
			               			
			               		}
			               		k=0;
			               		j=0;
			               		tempItem = new char[50];
			               	}
			                   //System.out.println(lineArray.length);
			               	//val++;
			               }
			           }
		        	finalString1=finalString1+line;
		        }
		        
		        if(val == 0)
			       {
			           System.out.println("Word does not exist");
			       }
			       
			       couponItem="";
			           
			          //System.out.println(associationSet);     
			          System.out.println(itemMap);
			          
			          sorted_map.putAll(itemMap);
			          System.out.println(sorted_map);
			          //int couponlength = 0;
			          couponlength = (sorted_map.size()< 11)? sorted_map.size() : 11;
			          for(int cnt = 0; cnt < couponlength; cnt++){
			       	   
			              java.util.Map.Entry<String, Integer> e = sorted_map.pollFirstEntry();
			              String itemName = e.getKey();
			              int popularity = e.getValue();
			              if (!(e.getKey().equals(searchItem)))
			              {
			              System.out.println(itemName+"---"+popularity);
			              
			              
			              if(cnt==couponlength)
			            	  couponItem = couponItem+ itemName; 
			              else
			              couponItem = couponItem+itemName+",";
			              
			              //couponItem.concat((itemName.trim()+",")); 
			             /* if(cnt==1)
			              {
			           	   couponItem = itemName;
			              }*/
			             
			              
			          }
			    	   
			    	   //Commenting it out
			           // out.append(line);
			       }

				    System.out.println(couponItem);
		       
		in.close();
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

  

       return  couponItem  ;
	 //return  finalString1  ;
}




}

class ValueComparator implements Comparator<String> {

    Map<String, Integer> base;
    public ValueComparator(Map<String, Integer> base) {
        this.base = base;
    }

    // Note: this comparator imposes orderings that are inconsistent with equals.    
    public int compare(String a, String b) {
        if (base.get(a) >= base.get(b)) {
            return -1;
        } else {
            return 1;
        } // returning 0 would merge keys
    }
}
