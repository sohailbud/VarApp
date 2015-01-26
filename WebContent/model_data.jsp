<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="chosen/chosen.min.css">
<link rel="stylesheet" type="text/css" href="css/modal.css">

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/semantic.min.js"></script>
<script src="chosen/chosen.jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="js/modal.js"></script>
<script src="js/gviz-api.js"></script>

<jsp:include page="header.jsp"></jsp:include>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="js/modeldata.js"></script>

<script type="text/javascript">
function createOption(selectbox, text, value) {
	var opt = document.createElement("OPTION");
	opt.text = text;
	opt.value = value;
	selectbox.options.add(opt);
}

window.onload = function() {
	var columns = new Array();
    <c:forEach items="${requestScope.columnLabels}" var="item">
    	columns.push("${item.key}");
	</c:forEach>
	for (var i=0; i<columns.length; ++i) {
		createOption(document.f1.variableSelectTEST, columns[i], columns[i]);
		if (i==0 || i==1) {
			document.f1.variableSelectTEST.options[i].selected=true;
		}
	}
}
</script>

<script type="text/javascript">
	google.load("visualization", "1", { packages : ['corechart','controls','table'] });

	google.setOnLoadCallback(drawChart);

	var jsonAll = ${requestScope.jsonAll};
	var jsonDataNational = ${requestScope.jsonDataNational};
	var jsonDataState = ${requestScope.jsonDataState};
	var stateVariableDraw = 1;
	var stateVariables = new Array();

	function drawChart() {

		// 3. Prepare Data
		var dataAll = new google.visualization.DataTable(jsonAll);
		var viewAll = new google.visualization.DataView(dataAll);		

		function getSelectedVariables() {
			var selectedVarIndx=[0,1];
			len = document.f1.variableSelectTEST.length
			
			for (var i=0; i<len; i++) {
				if(document.f1.variableSelectTEST[i].selected) {
					selectedVarIndx.push(i+2);
				}
			}
			return selectedVarIndx;
		}
		
		document.getElementById("demo").innerHTML = getSelectedVariables();		

		
		viewAll.setColumns(getSelectedVariables());
		
		// 4. Create A Dashboard Instance
		var dashboard = new google.visualization.Dashboard(document.getElementById('dashboard_div'));
		
		// 5. Create Control And Chart Instances		
		// (create a date range slider)
		var dateSlider = new google.visualization.ControlWrapper({
			'controlType': 'DateRangeFilter',
			'containerId': 'control_date_div',
			'options': {
				'filterColumnLabel' : 'Date'
			}
		});
		 
		var statePicker = new google.visualization.ControlWrapper({
			'controlType' : 'CategoryFilter',
			'containerId' : 'control_state_div',
			'options' : {
				'filterColumnLabel' : 'State',
				'ui' : {
					'labelStacking' : 'vertical',
					'allowTyping' : true,
					'allowMultiple' : true
				}
			}
		});
		
		var table = new google.visualization.ChartWrapper({
			'chartType': 'Table',
			'containerId': 'table_div',
			'options': {
			},
			'view': { 'columns': [] }
		});
		
		// (national chart visualization)
        var nationalChart = new google.visualization.ChartWrapper({
          'chartType' : 'LineChart',
          'containerId' : 'line_div',
        });
		
    	// (state chart visualization)
        var stateChart = new google.visualization.ChartWrapper({
          'chartType' : 'GeoChart',
          'containerId' : 'geo_div',
          'options': {
        	  region: "US", 
        	  resolution: "provinces"
          }
        });
		
    	//can be used as modifier in group data, currently not in use
        function floorDate(datetime) {
		       var newDate = new Date(datetime);
		       newDate.setHours(0);
		       newDate.setMinutes(0);
		       newDate.setSeconds(0);
		       return newDate;
		}
		
		// 5a. Use ready eventhandler to pass filtered data for aggregation
		google.visualization.events.addListener(table, 'ready', function() {
			// 1. Prepare Data
			// 1a. Create groups of 1 variable tables and group data by dates and states for national and states respectively
			var filteredData = table.getDataTable();
			var subNationalGroupedDataArray = new Array();
			var subStateGroupedDataArray = new Array();
			
			for(var i=2; i<filteredData.getNumberOfColumns(); i++) {
				// National
				var subNationalGroupedData = google.visualization.data.group(filteredData,[0],[{
					column: i,
					type: 'number',
					aggregation: google.visualization.data.sum
				}]);
				subNationalGroupedDataArray.push(subNationalGroupedData);
				
				//State
				var subStateGroupedData = google.visualization.data.group(filteredData,[1],[{
					column: i,
					type: 'number',
					aggregation: google.visualization.data.sum
				}]);
				subStateGroupedDataArray.push(subStateGroupedData);
			}
			
			// 1b. Join individual datatables stored in arrays
			nationalGroupedData=subNationalGroupedDataArray[0];
			stateGroupedData=subStateGroupedDataArray[0];
			if(filteredData.getNumberOfColumns()>3) {
				// National
				var numberOfColumns=[];
				for(var i=1; i<subNationalGroupedDataArray.length; i++) {
					numberOfColumns.push(i)
					nationalGroupedData = google.visualization.data.join(nationalGroupedData, 
							subNationalGroupedDataArray[i], 'full', [[0,0]], numberOfColumns, [1]);
				}
				
				// State
				var numberOfColumns=[];
				for(var i=1; i<subStateGroupedDataArray.length; i++) {
					numberOfColumns.push(i)
					stateGroupedData = google.visualization.data.join(stateGroupedData, 
							subStateGroupedDataArray[i], 'full', [[0,0]], numberOfColumns, [1]);
				}
			} 
			
			// 2. Draw Chart
			// National
			nationalChart.setDataTable(nationalGroupedData);
			nationalChart.draw();
			
			//State
			for (var i=1; i<stateGroupedData.getNumberOfColumns(); i++) {				
				stateVariables.push(stateGroupedData.getColumnLabel(i));
			}
			
			var stateColumns=[0];
			var stateView = new google.visualization.DataView(stateGroupedData);		
			stateColumns.push(stateVariableDraw);
			stateView.setColumns(stateColumns);
			stateChart.setDataTable(stateView);
			stateChart.draw();
		})
		
		// 6. Establish Dependencies
		dashboard.bind([statePicker, dateSlider], table);
		
		// 7. Draw Your Dashboard
		dashboard.draw(viewAll);
	}
	
	//create buttons
	function createButtons() {
		var node = document.getElementById("geoViewVar");
		while (node.hasChildNodes()) {
			node.removeChild(node.lastChild);
		}
		
		for (var i=0; i<stateVariables.length; i++) {
			var variable = stateVariables[i];
			window[variable] = 0;
			
			var btn = document.createElement("INPUT");
			btn.type = 'button';
			btn.name = variable;
			btn.value = variable;
			btn.onclick = function() { 
				variable==1;
				drawChart();
			}
			document.getElementById("geoViewVar").appendChild(btn);	// Append <button> to <div>
		}
	}
</script>

</head>
<body rel="1">
	<form name="f1" method="post" action="ModelDataServlet">
		<div id="wrapper">
			<div id="body">
				<select data-placeholder="United States" class="chzn-select">
					<option class="item">${item}</option>
					<c:forEach items="${states}" var="item">
						<option class="item">${item}</option>
					</c:forEach>
				</select>

				<div class="ui search selection dropdown" id="search-select">
					<div class="text">All Dates</div>
					<i class="dropdown icon"></i>
					<div class="menu">
						<div class="divider"></div>
						<div class="item" onclick="showModal()">Select dates</div>
					</div>
				</div>

				<select name=variableSelect onChange="drawChart()" data-placeholder="chose a variable" multiple
					class="chzn-select">
					<c:forEach items="${columnLabels}" var="entry">
						<option>${entry.key }</option>
					</c:forEach>
				</select>
				
				<select multiple name=variableSelectTEST
					onChange="drawChart()">
				</select>

				<div class="ui clearing divider"></div>

				<div class="ui small modal">
					<i class="close icon"></i>
					<div class="header">Select Dates</div>
					<div class="content">
						From <select>
							<c:forEach items="${months}" var="mon">
								<option>${mon}</option>
							</c:forEach>
						</select> <select>
							<c:forEach items="${years}" var="yr">
								<option>${yr}</option>
							</c:forEach>
						</select> <br> To <select>
							<c:forEach items="${months}" var="mon">
								<option>${mon}</option>
							</c:forEach>
						</select> <select>
							<c:forEach items="${years}" var="yr">
								<option>${yr}</option>
							</c:forEach>
						</select>
					</div>
					<div class="actions">
						<div class="ui button">Cancel</div>
						<div class="ui button">OK</div>
					</div>
				</div>
				<br>
				<p id="demo">test:</p>
				<br>
				<div id="submit" class="mini ui submitForm blue submit button"
					onclick="switchbutton(this)">Submit</div>

				<div id="dashboard_div">
					<div id="control_state_div"></div>
					<div id="control_date_div"></div>
					<div id="line_div" style="width: 900px; height: 500px;"></div>
					<div id="geoViewVar"></div>
					<div id="geo_div" style="width: 900px; height: 500px;"></div>
					<div id="table_div"></div>
				</div>

				<div id="national_div" style="width: 900px; height: 500px;"></div>
				<div id="regions_div" style="width: 900px; height: 500px;"></div>
				
			</div>
		</div>


	
	</form>
</body>

</html>