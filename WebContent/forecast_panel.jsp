<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Forecast Panel</title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans'
		rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/semantic.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/accordion.js"></script>
	
	<script type="text/javascript" src="js/forecast_panel.js"></script>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	
	<script type="text/javascript">
		google.load("visualization", "1.1", {packages : [ "bar" ]});
		google.setOnLoadCallback(drawChart);
		var marginalJsonData = ${marginalJsonData}
		var quarterlyJsonData = ${quarterlyJsonData}

		var profit=1;
		var sales=0;
		var prospects=0;
		var revenue=0;
		var cost=0;
		
		function drawChart() {
	
			//Marignal Plot
			var marginaldata = new google.visualization.DataTable(marginalJsonData);
			var marginalview = new google.visualization.DataView(marginaldata);
			
			if (profit==0) { marginalview.hideColumns([1]); } 
			if (sales==0) { marginalview.hideColumns([2]); } 
			if (prospects==0) { marginalview.hideColumns([3]); }
			if (revenue==0) { marginalview.hideColumns([4]); }
	        if (cost==0) { marginalview.hideColumns([5]); }
			
			var options = {
				legend : 'none',
		        legend: { position: "none" },
				tooltip : {
					isHtml : true
				},
				bars: 'horizontal', // Required for Material Bar Charts.
			};
	
			var marginalchart = new google.charts.Bar(document
					.getElementById('marginal_div'));
			marginalchart.draw(marginalview,options);
			
			//Quarterly Plot
			var quarterlydata = new google.visualization.DataTable(quarterlyJsonData);
			var quarterlyview = new google.visualization.DataView(quarterlydata);
			
			var quarterlychart = new google.charts.Bar(document
					.getElementById("quarterly_div"));
			quarterlychart.draw(quarterlyview,options);
			
	
		}
		
		function Profit(el){
			if (profit==1) {
				profit=0;
				el.className="mini ui basic icon toggle overview button";
			} else {
				profit=1;	
				el.className="mini ui basic icon toggle overview button active";
			}; 
			drawChart();
		}
		
		function Sales(el){
			if (sales==1) {
				sales=0;
				el.className="mini ui basic icon toggle overview button";
			} else {
				sales=1;	
				el.className="mini ui basic icon toggle overview button active";
			}; 
			drawChart();
		}
		
		function Prospects(el){
			if (prospects==1) {
				prospects=0;
				el.className="mini ui basic icon toggle overview button";
			} else {
				prospects=1;	
				el.className="mini ui basic icon toggle overview button active";
			}; 
			drawChart();
		}
		
		function Revenue(el){
			if (revenue==1) {
				revenue=0;
				el.className="mini ui basic icon toggle overview button";
			} else {
				revenue=1;	
				el.className="mini ui basic icon toggle overview button active";
			}; 
			drawChart();
		}
		
		function Cost(el){
			if (cost==1) {
				cost=0;
				el.className="mini ui basic icon toggle overview button";
			} else {
				cost=1;	
				el.className="mini ui basic icon toggle overview button active";
			}; 
			drawChart();
		}
	</script>

</head>

<body rel="0">
	<form method="post" action=processparam.jsp>

		<div id="wrapper">
			<div id="body">

				<h5 id="header" class="ui black block header">Forecast Parameters</h5>

				<div class="ui three column grid">

					<div class="left aligned column">

						<table class="ui small table segment">
							<thead>
								<tr>
									<th>TV</th>
									<th>Unit Cost</th>
									<th>Total Spend</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Prime</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="primeCost"
												value="${param.primeCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="primeSpend"
												value="${param.primeSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Cable</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="cableCost"
												value="${param.cableCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="cableSpend"
												value="${param.cableSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>DRTV</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="drtvCost" value="${param.drtvCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="drtvSpend"
												value="${param.drtvSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Satellite</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="satelliteCost"
												value="${param.satelliteCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="satelliteSpend"
												value="${param.satelliteSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Local</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="localCost"
												value="${param.localCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="localSpend"
												value="${param.localSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>NonPrime</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="nonPrimeCost"
												value="${param.nonPrimeCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="nonPrimeSpend"
												value="${param.nonPrimeSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Special</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="specialCost"
												value="${param.specialCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="specialSpend"
												value="${param.specialSpend}">
										</div>
									</td>
								</tr>
							</tbody>
						</table>

						<table class="ui small table segment">
							<thead>
								<tr>
									<th></th>
									<th>Unit Cost</th>
									<th>Total Spend</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Radio&nbsp&nbsp&nbsp&nbsp&nbsp</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="radioCost"
												value="${param.radioCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="radioSpend"
												value="${param.radioSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Print</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="printCost"
												value="${param.printCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="printSpend"
												value="${param.printSpend}">
										</div>
									</td>
								</tr>

							</tbody>
						</table>

					</div>

					<div class="column">

						<table class="ui small table segment">
							<thead>
								<tr>
									<th>Display</th>
									<th>Unit Cost</th>
									<th>Total Spend</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Fixed</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="fixedCost"
												value="${param.fixedCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="fixedSpend"
												value="${param.fixedSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Home</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="homeCost" value="${param.homeCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="homeSpend"
												value="${param.homeSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Games</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="gamesCost"
												value="${param.gamesCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="gamesSpend"
												value="${param.gamesSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Remarket</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="remarketCost"
												value="${param.remarketCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="remarketSpend"
												value="${param.remarketSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Program</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="programCost"
												value="${param.programCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="programSpend"
												value="${param.programSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Mobile</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="mobileCost"
												value="${param.mobileCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="mobileSpend"
												value="${param.mobileSpend}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Other</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="otherCost"
												value="${param.otherCost}">
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="otherSpend"
												value="${param.otherSpend}">
										</div>
									</td>
								</tr>
							</tbody>
						</table>

						<table class="ui small table segment">
							<thead>
								<tr>
									<th class="eight wide">Financial Parameters</th>
									<th class="eight wide"></th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>Conversion Value</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="conversionValue"
												value="${param.conversionValue}">
										</div>
									</td>
								</tr>
								<tr>
									<td>Interest Rate</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="interestRate"
												value="${param.interestRate}">
										</div>
									</td>
								</tr>

							</tbody>
						</table>

					</div>

					<div class="column">

						<div id="inputSpend"></div>

					</div>

				</div>

				<input class="mini ui blue button" type="submit" value="Forecast"></input>

				<h5 id="" class="ui black block header">Marginal Returns</h5>

				<div class="mini 6 ui fluid buttons">
					<input id="marginalReturnsButton" class="mini ui basic icon toggle overview button active" value="Profit" type="button" onclick="Profit(this)"> 
					<input id="marginalReturnsButton" class="mini ui basic icon toggle overview button" value="Sales" type="button" onclick="Sales(this)"> 
					<input id="marginalReturnsButton" class="mini ui basic icon toggle overview button" value="Prospects" type="button" onclick="Prospects(this)"> 
					<input id="marginalReturnsButton" class="mini ui basic icon toggle overview button" value="Revenue" type="button" onclick="Revenue(this)"> 
					<input id="marginalReturnsButton" class="mini ui basic icon toggle overview button" value="Cost" type="button" onclick="Cost(this)">
				</div>
				<div id="marginal_div" style="width: 1000px; height: 500px;"></div>
				<div id="quarterly_divb" style="width: 645px; height: 400px;"></div>
				
				
			</div>
		</div>
	</form>

</body>
</html>