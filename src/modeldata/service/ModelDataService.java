package modeldata.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import modeldata.service.jsonstruct.CDataset;
import modeldata.service.jsonstruct.ColDataset;
import modeldata.service.jsonstruct.Data;
import modeldata.service.jsonstruct.RowDataset;

import com.google.gson.Gson;

public class ModelDataService {

	public Connection myConn;
	public Statement myStmt;
	public ResultSet myRs;

	public ModelDataService() {
		connect();
	}

	/**
	 * connect to RDS database
	 */
	public void connect() {
		String dbName = "AppData"; 
		String userName = "webapp"; 
		String password = "webapptest"; 
		String hostname = "webapp.csbne4wol8wq.us-east-1.rds.amazonaws.com";
		String port = "3306";

		String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver ());


			// 1. Get a connection to database
			myConn = DriverManager.getConnection(jdbcUrl);

			// 2. Create statement
			myStmt = myConn.createStatement();

		} catch(Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * run SQL query and return results
	 * @param sql
	 * @return
	 */
	public ResultSet runQuery(String sql) {

		try {
			myRs = myStmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return myRs;
	}

	/**
	 * Get column names of the given data
	 * @param myRs
	 * @return
	 */
	public Map<String, String> getColumnNames(ResultSet myRs) {		

		Map<String, String> columnNames = new LinkedHashMap<String, String>();

		try {
			ResultSetMetaData rsmd = myRs.getMetaData();

			//loop meta data and store column names in LinkedHashMap 
			for(int i=1; i<=rsmd.getColumnCount(); ++i) {
				columnNames.put(rsmd.getColumnName(i),rsmd.getColumnClassName(i));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return columnNames;
	}

	/**
	 * loops the cloud database and creates a Map where keys are dates - states and values are variable data
	 * @param myRs
	 * @param columnNames
	 * @return
	 */
	public Map<LinkedHashMap<Date,String>,ArrayList<Integer>> loadDataDict(ResultSet myRs, Map<String, String> columnNames) {

		Map<LinkedHashMap<Date,String>,ArrayList<Integer>> dataDict = new LinkedHashMap<LinkedHashMap<Date,String>,ArrayList<Integer>>(); 

		try {
			while(myRs.next()) {

				LinkedHashMap<Date,String> dataDictKeys = new LinkedHashMap<Date,String>(); 
				ArrayList<Integer> dataDictValues = new ArrayList<Integer>();

				for (Map.Entry<String,String> cols:columnNames.entrySet()) {
					if (cols.getKey().equalsIgnoreCase("date")) {

						Date date=null;

						try {
							date = new SimpleDateFormat("yyy-M-d", Locale.ENGLISH).parse(myRs.getString(cols.getKey()));
						} catch (ParseException e) {
							e.printStackTrace();
						}

						dataDictKeys.put(date,myRs.getString("State"));
					} else if (!cols.getKey().equalsIgnoreCase("state")) {
						dataDictValues.add(Integer.parseInt(myRs.getString(cols.getKey())));
					}
				}

				dataDict.put(dataDictKeys, dataDictValues);
			}
		} catch (SQLException SQLe) {
			SQLe.printStackTrace();
		}

		return dataDict;
	}

	/**
	 * using the Map created by loadDataDict() it groups the entries by states and dates to get national and state level data 
	 * @param dataDict
	 * @return
	 */
	public List<Map<?, Integer[]>> getNaitonalStateData(Map<LinkedHashMap<Date,String>,ArrayList<Integer>> dataDict) {

		Map<String, String> STATES = new HashMap<String, String>();
		STATES.put("AL", "Alabama");
		STATES.put("AK", "Alaska");
		STATES.put("AB", "Alberta");
		STATES.put("AZ", "Arizona");
		STATES.put("AR", "Arkansas");
		STATES.put("BC", "British Columbia");
		STATES.put("CA", "California");
		STATES.put("CO", "Colorado");
		STATES.put("CT", "Connecticut");
		STATES.put("DE", "Delaware");
		STATES.put("DC", "District Of Columbia");
		STATES.put("FL", "Florida");
		STATES.put("GA", "Georgia");
		STATES.put("GU", "Guam");
		STATES.put("HI", "Hawaii");
		STATES.put("ID", "Idaho");
		STATES.put("IL", "Illinois");
		STATES.put("IN", "Indiana");
		STATES.put("IA", "Iowa");
		STATES.put("KS", "Kansas");
		STATES.put("KY", "Kentucky");
		STATES.put("LA", "Louisiana");
		STATES.put("ME", "Maine");
		STATES.put("MB", "Manitoba");
		STATES.put("MD", "Maryland");
		STATES.put("MA", "Massachusetts");
		STATES.put("MI", "Michigan");
		STATES.put("MN", "Minnesota");
		STATES.put("MS", "Mississippi");
		STATES.put("MO", "Missouri");
		STATES.put("MT", "Montana");
		STATES.put("NE", "Nebraska");
		STATES.put("NV", "Nevada");
		STATES.put("NB", "New Brunswick");
		STATES.put("NH", "New Hampshire");
		STATES.put("NJ", "New Jersey");
		STATES.put("NM", "New Mexico");
		STATES.put("NY", "New York");
		STATES.put("NF", "Newfoundland");
		STATES.put("NC", "North Carolina");
		STATES.put("ND", "North Dakota");
		STATES.put("NT", "Northwest Territories");
		STATES.put("NS", "Nova Scotia");
		STATES.put("NU", "Nunavut");
		STATES.put("OH", "Ohio");
		STATES.put("OK", "Oklahoma");
		STATES.put("ON", "Ontario");
		STATES.put("OR", "Oregon");
		STATES.put("PA", "Pennsylvania");
		STATES.put("PE", "Prince Edward Island");
		STATES.put("PR", "Puerto Rico");
		STATES.put("QC", "Quebec");
		STATES.put("RI", "Rhode Island");
		STATES.put("SK", "Saskatchewan");
		STATES.put("SC", "South Carolina");
		STATES.put("SD", "South Dakota");
		STATES.put("TN", "Tennessee");
		STATES.put("TX", "Texas");
		STATES.put("UT", "Utah");
		STATES.put("VT", "Vermont");
		STATES.put("VI", "Virgin Islands");
		STATES.put("VA", "Virginia");
		STATES.put("WA", "Washington");
		STATES.put("WV", "West Virginia");
		STATES.put("WI", "Wisconsin");
		STATES.put("WY", "Wyoming");
		STATES.put("YT", "Yukon Territory");

		List<Map<?, Integer[]>> nationalStateData = new ArrayList<Map<?, Integer[]>>();

		Map<Date,Integer[]> nationalData = new LinkedHashMap<Date, Integer[]>();
		Map<String,Integer[]> stateData = new LinkedHashMap<String, Integer[]>();

		for (Map.Entry<LinkedHashMap<Date, String>, ArrayList<Integer>> entry : dataDict.entrySet()) {

			Date[] date = entry.getKey().keySet().toArray(new Date[entry.getKey().keySet().size()]);
			String[] state = entry.getKey().values().toArray(new String[entry.getKey().values().size()]);			
			Integer[] values = entry.getValue().toArray(new Integer[entry.getValue().size()]);

			if(nationalData.containsKey(date[0])) {
				Integer[] d = new Integer[values.length];
				for (int i=0; i<values.length; ++i) {
					d[i] = values[i] + nationalData.get(date[0])[i];
				}
				nationalData.put(date[0], d);
			} else { nationalData.put(date[0], values); }


			String fullState=STATES.get(state[0]);
			if(stateData.containsKey(fullState)) {
				Integer[] d = new Integer[values.length];
				for (int i=0; i<values.length; ++i) {
					d[i] = values[i] + stateData.get(fullState)[i];
				}
				stateData.put(fullState, d);
			} else { stateData.put(fullState, values); }

		}

		nationalStateData.add(nationalData);
		nationalStateData.add(stateData);

		return nationalStateData;
	}

	/**
	 * creates 2 JSON string: national and state 
	 * @param nationalStateData
	 * @param columnNames
	 * @return
	 */
	public List<String> createJson(List<Map<?, Integer[]>> nationalStateData, Map<String, String> columnNames) {

		List<String> json = new ArrayList<String>();

		Data dataN = new Data();		
		Data dataS = new Data();
		Gson gson = new Gson();
		String jsonNational=null;
		String jsonState=null;

		//LOAD COLUMNS IN OBJECT data

		List<ColDataset> columnsS = new ArrayList<ColDataset>();
		List<ColDataset> columnsN = new ArrayList<ColDataset>();

		for (Map.Entry<String, String> cols : columnNames.entrySet()) {

			ColDataset column = new ColDataset();
			column.setId("");
			column.setPattern("");
			column.setLabel(cols.getKey());

			if (cols.getValue().contains("Date")) {
				column.setType("date");				
			} else if (cols.getValue().contains("String")) {
				column.setType("string");				
			} else if (cols.getValue().contains("Integer")) {
				column.setType("number");				
			}

			if (cols.getKey().equalsIgnoreCase("date")) {
				columnsN.add(column);
			} else if (cols.getKey().equalsIgnoreCase("state")) {
				columnsS.add(column);
			} else {
				columnsN.add(column);
				columnsS.add(column);
			}
		}

		dataN.setColsDataset(columnsN);
		dataS.setColsDataset(columnsS);

		//LOAD ROWS IN OBJECT data	
		Map<Date,Integer[]> nationalData = (Map<Date, Integer[]>) nationalStateData.get(0);
		Map<String,Integer[]> stateData = (Map<String, Integer[]>) nationalStateData.get(1);

		//NATIONAL
		List<CDataset> cDatasetNational = new ArrayList<CDataset>();

		for (Map.Entry<Date, Integer[]> entry:nationalData.entrySet()) {
			List<RowDataset> row = new ArrayList<RowDataset>();

			Calendar cal = new GregorianCalendar();
			cal.setTime(entry.getKey());
			int m = cal.get(Calendar.MONTH);
			int y = cal.get(Calendar.YEAR);
			int d = cal.get(Calendar.DAY_OF_MONTH);
			String dt = "Date(".concat(String.valueOf(y)).concat(",").concat(String.valueOf(m).concat(",").concat(String.valueOf(d)).concat(")"));

			RowDataset<String> rowParam1 = new RowDataset<String>();
			rowParam1.setV(dt);
			row.add(rowParam1);

			for (int i : entry.getValue()) {
				RowDataset<Integer> rowParamN = new RowDataset<Integer>();
				rowParamN.setV(i);
				row.add(rowParamN);
			}

			CDataset c = new CDataset();
			c.setC(row);

			cDatasetNational.add(c);
		}

		//STATE
		List<CDataset> cDatasetState = new ArrayList<CDataset>();

		for (Map.Entry<String, Integer[]> entry:stateData.entrySet()) {
			List<RowDataset> row = new ArrayList<RowDataset>();

			RowDataset<String> rowParam1 = new RowDataset<String>();
			rowParam1.setV(entry.getKey());
			row.add(rowParam1);

			for (int i : entry.getValue()) {
				RowDataset<Integer> rowParamN = new RowDataset<Integer>();
				rowParamN.setV(i);
				row.add(rowParamN);
			}

			CDataset c = new CDataset();
			c.setC(row);

			cDatasetState.add(c);
		}

		dataN.setRowsDataset(cDatasetNational);
		dataS.setRowsDataset(cDatasetState);

		jsonNational = gson.toJson(dataN);
		jsonState = gson.toJson(dataS);

		json.add(jsonNational);
		json.add(jsonState);
		return json;
	}

	public String createFullDataJson(Map<LinkedHashMap<Date,String>,ArrayList<Integer>> dataDict, Map<String, String> columnNames) {
		Data data = new Data();		
		Gson gson = new Gson();
		String json=null;

		//LOAD COLUMNS IN OBJECT data
		List<ColDataset> columns = new ArrayList<ColDataset>();

		for (Map.Entry<String, String> cols : columnNames.entrySet()) {
			ColDataset column = new ColDataset();
			column.setId("");
			column.setPattern("");
			column.setLabel(cols.getKey());

			if (cols.getValue().contains("Date")) {
				column.setType("date");				
			} else if (cols.getValue().contains("String")) {
				column.setType("string");				
			} else if (cols.getValue().contains("Integer")) {
				column.setType("number");				
			}
			columns.add(column);
		}
		data.setColsDataset(columns);

		//LOAD ROWS IN OBJECT data	
		List<CDataset> cDataset = new ArrayList<CDataset>();

		for (Map.Entry<LinkedHashMap<Date, String>, ArrayList<Integer>> entry : dataDict.entrySet()) {
			Date[] date = entry.getKey().keySet().toArray(new Date[entry.getKey().keySet().size()]);
			String[] state = entry.getKey().values().toArray(new String[entry.getKey().values().size()]);			
			Integer[] values = entry.getValue().toArray(new Integer[entry.getValue().size()]);
			
			List<RowDataset> row = new ArrayList<RowDataset>();

			Calendar cal = new GregorianCalendar();
			cal.setTime(date[0]);
			int m = cal.get(Calendar.MONTH);
			int y = cal.get(Calendar.YEAR);
			int d = cal.get(Calendar.DAY_OF_MONTH);
			String dt = "Date(".concat(String.valueOf(y)).concat(",").concat(String.valueOf(m).concat(",").concat(String.valueOf(d)).concat(")"));

			RowDataset<String> rowParam1 = new RowDataset<String>();
			rowParam1.setV(dt);
			row.add(rowParam1);

			RowDataset<String> rowParam2 = new RowDataset<String>();
			rowParam2.setV(state[0]);
			row.add(rowParam2);
			
			for (int v : values) {
				RowDataset<Integer> rowParamV = new RowDataset<Integer>();
				rowParamV.setV(v);
				row.add(rowParamV);
			}

			CDataset c = new CDataset();
			c.setC(row);
			cDataset.add(c);
		}

		data.setRowsDataset(cDataset);
		json = gson.toJson(data);
		return json;
	}

	/**
	 * create a list date range in multiple formats: list of months, list of years, number of months in date range, number of years in date range
	 * @param nationalStateData
	 * @return
	 */
	public List<List<String>> getDateRange(List<Map<?, Integer[]>> nationalStateData) {

		List<List<String>> dateRange = new ArrayList<List<String>>();

		List<Date> dates = new ArrayList<Date>((Collection<? extends Date>) nationalStateData.get(0).keySet());
		Set<String> mon = new HashSet<String>();
		List<String> months = new ArrayList<String>();
		Set<String> yr = new HashSet<String>();
		List<String> year = new ArrayList<String>();
		List<String> diff = new ArrayList<String>();

		for (Date d:dates) {
			yr.add(new SimpleDateFormat("yyyy").format(d));
			mon.add(new SimpleDateFormat("MMMM").format(d));
		}
		year.addAll(yr);
		months.addAll(mon);

		//find how many months and years in the given date range
		Collections.sort(dates);
		Calendar startCalendar = new GregorianCalendar();
		Calendar endCalendar = new GregorianCalendar();

		startCalendar.setTime(dates.get(0));
		endCalendar.setTime(dates.get(dates.size()-1));

		int diffYear = endCalendar.get(Calendar.YEAR) - startCalendar.get(Calendar.YEAR);
		int diffMonth = diffYear * 12 + endCalendar.get(Calendar.MONTH) - startCalendar.get(Calendar.MONTH);
		diff.add(String.valueOf(diffYear));
		diff.add(String.valueOf(diffMonth));

		dateRange.add(year);
		dateRange.add(months);
		dateRange.add(diff);

		return dateRange;
	}


}















