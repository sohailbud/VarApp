package modeldata;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modeldata.service.ModelDataService;

/**
 * Servlet implementation class ModelDataServlet
 */
//@WebServlet("/ModelDataServlet")
public class ModelDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	ModelDataService modelDataService = new ModelDataService();
	
		String sql="SELECT * FROM DummyData3";
		ResultSet myRs = modelDataService.runQuery(sql);		
		Map<String, String> columns = modelDataService.getColumnNames(myRs);
		
		Map<LinkedHashMap<Date, String>, ArrayList<Integer>> dataDict= modelDataService.loadDataDict(myRs, columns);
		List<Map<?, Integer[]>> nationalStateData = modelDataService.getNaitonalStateData(dataDict);
		List<String> json = modelDataService.createJson(nationalStateData, columns);
		
		List<String> states = new ArrayList<String>((Collection<? extends String>) nationalStateData.get(1).keySet());
		
		//getDateRange()
		List<List<String>> dateRange = modelDataService.getDateRange(nationalStateData);
	
		String jsonAll = modelDataService.createFullDataJson(dataDict, columns);
			
		// drop Date and State column names just before sending request
		columns.remove("State");
		columns.remove("Date");
		request.setAttribute("columnLabels", columns);
				
		request.setAttribute("jsonAll", jsonAll);
		request.setAttribute("diffYears", dateRange.get(2).get(0));
		request.setAttribute("diffMonths", dateRange.get(2).get(1));
		request.setAttribute("years", dateRange.get(0));
		request.setAttribute("months", dateRange.get(1));
		request.setAttribute("states", states);
		request.setAttribute("jsonDataNational", json.get(0));
		request.setAttribute("jsonDataState", json.get(1));
		
		request.getRequestDispatcher("model_data.jsp").forward(request, response);
	}

}
