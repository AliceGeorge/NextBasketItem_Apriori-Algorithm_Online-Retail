package aws;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;

import weka.core.converters.ConverterUtils.DataSource;
import weka.associations.Apriori;
import weka.core.Instances;
import weka.filters.Filter;
import weka.filters.unsupervised.attribute.NumericToNominal;

public class BakeryAssociation {
	public static BufferedReader readDataFile(String filename) {
		BufferedReader inputReader = null;
		

		try {
			inputReader = new BufferedReader(new FileReader(filename));
		} catch (FileNotFoundException ex) {
			System.err.println("File not found: " + filename);
		}

		return inputReader;
	}

	public static void main(String[] args) throws Exception{
	}
	
	
	public String returnRules (String name) throws Exception
	{
		BufferedReader datafile = readDataFile(name);
		Instances data = new Instances(datafile);
		//data.setClassIndex(data.numAttributes()-1);
		
		//System.setOut(new PrintStream(new BufferedOutputStream(new FileOutputStream("output.txt")), true));
		
	/*	NumericToNominal nm = new NumericToNominal();
		nm.setInputFormat(data);
		Instances filteredData = Filter.useFilter(data, nm); 
		filteredData.setClassIndex(filteredData.numAttributes()-1);*/
		
		
		//using apriori 
		Apriori model = new Apriori();
		String[] options = new String[6];
		/*options[0] = "-N";
		options[1] = "1000";
		options[2] = "-M";
		options[3] = "0.001";
		options[4] = "-C";
		options[5] = "0.2";*/
		
		options[0] = "-N";
		options[1] = "1000";
		options[2] = "-M";
		options[3] = "0.01";
		options[4] = "-C";
		options[5] = "0.01";
		/*options[6] = "-c";
		options[7] = "50";
	*/

		model.setOptions(options);
		model.setCar(true);
		


	//	model.buildAssociations(filteredData);
		model.buildAssociations(data);
		System.out.println(model);
		String modelResult=model.toString();
		System.out.println(modelResult);
		//return("from weka");
		return modelResult;
		
	}
	
	
	
	public boolean writeOutput (String fileName,String text) throws Exception
	{
		
		BufferedWriter out1 = null;
		  boolean outputstatus=true;
		  boolean bw=true;
		  FileWriter fstream = new FileWriter(fileName, true); //true tells to append data.
		  
		  outputstatus=(fstream==null);
		  out1 = new BufferedWriter(fstream);
		  bw=(out1==null);
		  out1.write("first line");
		  fstream.close();
		  return bw;
		  
		  
		  
		  
	
	}
	
	
	public String writeOutput1 (String fileName1,String text) throws Exception
	{
		
		String finalString1="";
		
		
	BufferedWriter out = new BufferedWriter
	        (new FileWriter(fileName1,false));
	        out.write(text);
	        out.close();
	       
	     
	    	
	    	
	    	
	    	BufferedReader in = new BufferedReader
	    	        (new FileReader(fileName1));
	    	        String str;
	    	        while ((str = in.readLine()) != null) 
	    	        {
	    	        	finalString1=finalString1+str;
	    	        }
	    	       
	    	in.close();
	
		
		
		
		
		return (finalString1);
		  
		  
	
	}
	
	
	
	
	}


