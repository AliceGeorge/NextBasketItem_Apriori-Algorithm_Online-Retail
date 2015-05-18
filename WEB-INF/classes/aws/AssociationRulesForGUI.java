package aws;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

import weka.associations.Apriori;
import weka.core.Instances;
import weka.filters.Filter;
import weka.filters.unsupervised.attribute.NumericToNominal;

public class AssociationRulesForGUI {
	public static BufferedReader readDataFile(String filename) throws Exception {
		BufferedReader inputReader = null;

		try {
			inputReader = new BufferedReader(new FileReader(filename));
		} catch (FileNotFoundException ex) {
			System.err.println("File not found: " + filename);
			throw ex;
		}

		return inputReader;
	}

	public static void main(String[] args) throws Exception
	{
		/*String a = new AssociationRulesForGUI().returnRules();
		System.out.println(a);*/
	}
	
	public String returnRules (String name) throws Exception
	{
		//BufferedReader datafile = readDataFile("weather.arff");
		BufferedReader datafile = readDataFile(name);
		//C:\Radhika\Studies\Spring 2015\239\Project\Project 1\data 
		//BufferedReader datafile = readDataFile("C:\\Radhika\\Studies\\Spring 2015\\239\\Project\\Project 1\\data\\weather.arff");
		Instances data = new Instances(datafile);
		//data.setClassIndex(data.numAttributes()-1);
		NumericToNominal nm = new NumericToNominal();

		nm.setInputFormat(data);
		//
		Instances filteredData = Filter.useFilter(data, nm); 
		filteredData.setClassIndex(filteredData.numAttributes()-1);
		//using apriori 
		Apriori model = new Apriori();
		String[] options = new String[4];
		options[0] = "-N";
		options[1] = "30";
		options[2] = "-C";
		options[3] = "0.2";

		model.setOptions(options);
		model.setCar(true);


		model.buildAssociations(filteredData);
		//model.getAllTheRules();
		//System.out.println(model);
		String modelResult=model.toString();
		//System.out.println(modelResult);
		//return("from weka");
		return modelResult;
	}

	
	
	
}
