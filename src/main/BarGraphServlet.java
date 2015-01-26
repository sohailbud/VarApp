package main;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.ServletConfig;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import POCclass.*;

import com.mathworks.toolbox.javabuilder.MWNumericArray;
import com.mathworks.toolbox.javabuilder.MWException;

import forecastpanel.ForecastParam;
import forecastpanel.service.ForecastPanelService;

public class BarGraphServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private Calc calc;
    
    public void init(ServletConfig config) throws ServletException
    {
        super.init(config);

        try
        {
			calc = new Calc();
        }
        catch(MWException e)
        {
            e.printStackTrace();
        }
    }

    public void destroy()
    {
        super.destroy();

        if(calc!=null)
        {
            calc.dispose();
        }
    }
    
    @SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	//get input parameters as a forecastParam object from forecast_panel.jsp
    	HttpSession session = request.getSession();
    	ForecastParam fp = (ForecastParam) request.getAttribute("forecastParam");
    	
    	request.setAttribute("test", request.getParameter("primeCost").getClass());
    	
        final DecimalFormat DF = new DecimalFormat("###,###.##");

    	/**
    	 * COLLECT DATA FROM UI AND CONVERT TO MATLAB ARRAY
        */
        
        //COST
        ArrayList<Double> cost = fp.getCostArray();   

        double[] cdims = new double[16];
        MWNumericArray costArray = new MWNumericArray(cdims);
        
        //add collected data to a MatlabArray
        for (int i=1; i<=16; i++) {
        	costArray.set(i, cost.get(i-1));
        }

        //SPEND
        ArrayList<Double> spend = fp.getSpendArray();     
        
        MWNumericArray spendArray = new MWNumericArray(cdims);
        
        //add collected data to a MatlabArray
        for (int i=1; i<=16; i++) {
        	spendArray.set(i, spend.get(i-1));
        }

        //CONVERSION VALUE AND INTEREST RATE
        MWNumericArray conversionValue = new MWNumericArray(fp.getConversionValue());
        MWNumericArray interestRate = new MWNumericArray(fp.getInterestRate());
        
        /**
         * RUN SALES FUNCTION
         */
		double[] salesResults = null;

        try {
			Object[] results = calc.sales(1, spendArray);
			salesResults=((MWNumericArray)results[0]).getDoubleData();
		} catch (MWException e) {
			e.printStackTrace();
		}
		
        //Set sales attributes in request
        request.setAttribute("salesTotal", DF.format(salesResults[0]));

        for(int i=1; i<=16; i++) {
        	request.setAttribute("salesMargin"+Integer.toString(i), DF.format(salesResults[i]));
        }
        
        /**
         * RUN PROSPECTS FUNCTION
         */
		double[] prosResults = null;

        try {
			Object[] results = calc.pros(1, spendArray);
			prosResults=((MWNumericArray)results[0]).getDoubleData();
		} catch (MWException e) {
			e.printStackTrace();
		}
		
        //Set sales attributes in request
        request.setAttribute("prosTotal", DF.format(prosResults[0]));

        for(int i=1; i<=16; i++) {
        	request.setAttribute("prosMargin"+Integer.toString(i), DF.format(prosResults[i]));
        }
      
        /**
         * RUN REVENUES FUNCTION
         */
		double[] revResults = null;

        try {
			Object[] results = calc.gross(1, conversionValue, spendArray);
			revResults=((MWNumericArray)results[0]).getDoubleData();
		} catch (MWException e) {
			e.printStackTrace();
		}
		
        //Set sales attributes in request
        request.setAttribute("revTotal", DF.format(revResults[0]));

        for(int i=1; i<=16; i++) {
        	request.setAttribute("revMargin"+Integer.toString(i), DF.format(revResults[i]));
        }
        
        /**
         * RUN COST FUNCTION
         */
		double[] costResults = null;

        try {
			Object[] results = calc.cost(1, costArray, spendArray);
			costResults=((MWNumericArray)results[0]).getDoubleData();
		} catch (MWException e) {
			e.printStackTrace();
		}
		
        //Set sales attributes in request
        request.setAttribute("costTotal", DF.format(costResults[0]));

        for(int i=1; i<=16; i++) {
        	request.setAttribute("costMargin"+Integer.toString(i), DF.format(costResults[i]));
        }
        
        /**
         * RUN PROFITS FUNCTION
         */
		double[] profitResults = null;

        try {
			Object[] results = calc.net(1, conversionValue, costArray, spendArray);
			profitResults=((MWNumericArray)results[0]).getDoubleData();
		} catch (MWException e) {
			e.printStackTrace();
		}

        //Set sales attributes in request
        request.setAttribute("profitTotal", DF.format(profitResults[0]));

        for(int i=1; i<=16; i++) {
        	request.setAttribute("profitMargin"+Integer.toString(i), DF.format(profitResults[i]));
        }    
        
        /**
         * CREATE JSON OBJECT FOR ABOVE FUNCTINOS
         * salesResults, prosResults, revResults, costResults, profitResults
         */
        ForecastPanelService forecastPanelService = new ForecastPanelService();

        String marginalJsonData = forecastPanelService.loadData(profitResults, salesResults, prosResults, revResults, costResults);
        String quarterlyJsonData = forecastPanelService.getQuarterlyTotalJson(profitResults, salesResults, prosResults, revResults, costResults);

        request.setAttribute("marginalJsonData", marginalJsonData);
        request.setAttribute("quarterlyJsonData", quarterlyJsonData);        
        
		request.getRequestDispatcher("forecast_panel.jsp").forward(request, response);
		
    }
    

}
