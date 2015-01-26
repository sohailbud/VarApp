package forecastpanel.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;

import modeldata.service.jsonstruct.CDataset;
import modeldata.service.jsonstruct.ColDataset;
import modeldata.service.jsonstruct.Data;
import modeldata.service.jsonstruct.RowDataset;

public class ForecastPanelService {

	public String loadData(double[] profitResults, double[] salesResults, double[] prosResults,
			double[] revResults, double[] costResults) {

		Data data = new Data();
		Gson gson = new Gson();
		String json=null;

		//ADD COLUMNS
		List<ColDataset> columns = new ArrayList<ColDataset>();

		ArrayList<String> columnNames = new ArrayList<String>();
		ArrayList<String> rowNames = new ArrayList<String>();

		columnNames.addAll(Arrays.asList("Variables","Profits","Sales","Prospects","Revenue","Cost"));
		rowNames.addAll(Arrays.asList("Total","TV Prime","TV Cable","TV DRTV","TV Satellite","TV Local","TV NonPrime",
				"TV Special","Display Fixed","Display Home","Display Games","Display Remark","Display Prog",
				"Display Mobile","Display Other","Radio","Print"));
		
		for(String col:columnNames) {
			ColDataset column = new ColDataset();
			column.setId("");
			column.setLabel(col);
			column.setPattern("");

			if(col.equals("Variables")) {
				column.setType("string");
			} else {
				column.setType("number");
			}

			columns.add(column);
		}
		data.setColsDataset(columns);

		//ADD ROWS		
		List<CDataset> cDatasets = new ArrayList<CDataset>();

		//first element of sales results is Quarterly Totals
		for(int i=1; i<salesResults.length; ++i) {

			List<RowDataset> row = new ArrayList<RowDataset>();

			RowDataset<String> rowParam1 = new RowDataset<String>();
			rowParam1.setV(rowNames.get(i));
			row.add(rowParam1);
			
			RowDataset<Double> rowParam2 = new RowDataset<Double>();
			rowParam2.setV(profitResults[i]);
			row.add(rowParam2);

			RowDataset<Double> rowParam3 = new RowDataset<Double>();
			rowParam3.setV(salesResults[i]);
			row.add(rowParam3);
			
			RowDataset<Double> rowParam4 = new RowDataset<Double>();
			rowParam4.setV(prosResults[i]);
			row.add(rowParam4);
			
			RowDataset<Double> rowParam5 = new RowDataset<Double>();
			rowParam5.setV(revResults[i]);
			row.add(rowParam5);
			
			RowDataset<Double> rowParam6 = new RowDataset<Double>();
			rowParam6.setV(costResults[i]);
			row.add(rowParam6);
			


			CDataset c = new CDataset();
			c.setC(row);
			cDatasets.add(c);
		}

		data.setRowsDataset(cDatasets);

		json=gson.toJson(data);

		return json;
	}
	
	public String getQuarterlyTotalJson(double[] profitResults, double[] salesResults, double[] prosResults,
			double[] revResults, double[] costResults) {
		
		Data data = new Data();
		Gson gson = new Gson();
		String json=null;

		//ADD COLUMNS
		List<ColDataset> columns = new ArrayList<ColDataset>();

		ColDataset column1 = new ColDataset();
		ColDataset column2 = new ColDataset();

		column1.setId("");
		column1.setLabel("Quarterly Totals");
		column1.setPattern("");
		column1.setType("string");

		column2.setId("");
		column2.setLabel("Totals");
		column2.setPattern("");
		column2.setType("number");
		
		columns.add(column1);
		columns.add(column2);

		data.setColsDataset(columns);

		//ADD ROWS	
		Map<String, Double> quarterlyTotals = new LinkedHashMap<String, Double>();
		quarterlyTotals.put("Profit", profitResults[0]);
		quarterlyTotals.put("Sales", salesResults[0]);
		quarterlyTotals.put("Prospects", prosResults[0]);
		quarterlyTotals.put("Revenue", revResults[0]);
		quarterlyTotals.put("Cost", costResults[0]);
		
		List<CDataset> cDatasets = new ArrayList<CDataset>();

		//first element of sales results is Quarterly Totals

		for (Map.Entry<String, Double> qt:quarterlyTotals.entrySet()) {
			
			List<RowDataset> row = new ArrayList<RowDataset>();

			RowDataset<String> rowParam1 = new RowDataset<String>();
			rowParam1.setV(qt.getKey());
			row.add(rowParam1);

			RowDataset<Double> rowParam2 = new RowDataset<Double>();
			rowParam2.setV(qt.getValue());
			row.add(rowParam2);

			CDataset c = new CDataset();
			c.setC(row);
			cDatasets.add(c);
			
		}

		data.setRowsDataset(cDatasets);

		json=gson.toJson(data);

		System.out.println(json);
		return json;
	}


}
