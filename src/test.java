
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import modeldata.service.ModelDataService;


public class test {

	public static void main(String[] args) {

		ModelDataService modelDataService = new ModelDataService();
		
		String sql="SELECT * FROM DummyData3";
		ResultSet myRs = modelDataService.runQuery(sql);
		Map<String, String> columns = modelDataService.getColumnNames(myRs);
		
		Map<LinkedHashMap<Date, String>, ArrayList<Integer>> dataDict= modelDataService.loadDataDict(myRs, columns);
		
		modelDataService.createFullDataJson(dataDict, columns);
		
			
		System.out.println("done");

		
		
		
	}

	}
