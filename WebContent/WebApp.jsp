<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>JS Bin</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="./css/StyleSheet.css">
<link rel="stylesheet" type="text/css" href="./css/semantic.min.css">

<script src="./js/semantic.min.js"></script>
<script src=".js/formValidation.js"></script>

<link href='http://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet' type='text/css'>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery(".content").hide();
		//toggle the componenet with class msg_body
		jQuery(".heading").click(function() {
			jQuery(this).next(".content").slideToggle(300);
		});
	});
</script>

</head>


<body>



	<form method="post" action=processparam.jsp>
	

		<div id="wrapper">

			<div id="head">
				<img src="images/mpg_logo.png" height="130">
			</div>

			<div class="ui clearing divider"></div>

			<div id="menu">
				<div class="ui secondary vertical pointing menu">
					<a class="active item">Forecast Panel</a> <a href="page2.jsp"
						class="item">Model Data</a>
				</div>

			</div>

			<div id="body1">



				<h5 class="ui gray block header">Forecast Parameters</h5>

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
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="primeSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Cable</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="cableCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="cableSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>DRTV</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="drtvCost" value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="drtvSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Satellite</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="satelliteCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="satelliteSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Local</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="localCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="localSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>NonPrime</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="nonPrimeCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="nonPrimeSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Special</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="specialCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="specialSpend"
												value=2>
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
									<td>Radio</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="radioCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="radioSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Print</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="printCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="printSpend"
												value=2>
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
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="fixedSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Home</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="homeCost" value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="homeSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Games</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="gamesCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="gamesSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Remarket</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="remarketCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="remarketSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Program</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="programCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="programSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Mobile</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="mobileCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="mobileSpend"
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Other</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="otherCost"
												value=2>
										</div>
									</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="otherSpend"
												value=2>
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
												value=2>
										</div>
									</td>
								</tr>
								<tr>
									<td>Interest Rate</td>
									<td>
										<div class="ui mini input">
											<input type="text" name="interestRate"
												value=1>
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

				<input class="ui blue button" type="submit" value="Forecast"></input>
				<button class="ui icon button" type="reset">
					<img src="images/reset.png" height="16">
				</button>


				<h5 class="ui gray block header">Quarterly Totals</h5>

				<table class="ui small table segment">
					<thead>
						<tr>
							<th>Sales</th>
							<th>Prospects</th>
							<th>Revenues</th>
							<th>Cost</th>
							<th>Profits</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><div class="detail">${requestScope.salesTotal}</div></td>
							<td><div class="detail">${requestScope.prosTotal}</div></td>
							<td><div class="detail">${requestScope.revTotal}</div></td>
							<td><div class="detail">${requestScope.costTotal}</div></td>
							<td><div class="detail">${requestScope.profitTotal}</div></td>
						</tr>
					</tbody>
				</table>




				<h5 class="ui gray block header">Marginal Returns</h5>



				<script type="text/javascript" src="https://www.google.com/jsapi"></script>
				<script type="text/javascript">
					google.load("visualization", "1", {
						packages : [ "corechart" ]
					});
					google.setOnLoadCallback(drawChart);
					function drawChart() {

						var dataSales = google.visualization
								.arrayToDataTable([
										[ '', '', {
											type : 'string',
											role : 'tooltip',
											'p' : {
												'html' : true
											}
										} ],
										[
												'TV Prime',
				<%=request.getAttribute("salesMargin1")%>
					,
												"<i>TV Prime: </i>"
														+
				<%=request.getAttribute("salesMargin1")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("primeSpend")%>
					],
										[
												'TV Cable',
				<%=request.getAttribute("salesMargin2")%>
					,
												"<i>TV Cable: </i>"
														+
				<%=request.getAttribute("salesMargin2")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("cableSpend")%>
					],
										[
												'TV DRTV',
				<%=request.getAttribute("salesMargin3")%>
					,
												"<i>TV DRTV: </i>"
														+
				<%=request.getAttribute("salesMargin3")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("drtvSpend")%>
					],
										[
												'TV Satelite',
				<%=request.getAttribute("salesMargin4")%>
					,
												"<i>TV Satelite: </i>"
														+
				<%=request.getAttribute("salesMargin4")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("satelliteSpend")%>
					],
										[
												'TV Local',
				<%=request.getAttribute("salesMargin5")%>
					,
												"<i>TV Local: </i>"
														+
				<%=request.getAttribute("salesMargin5")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("localSpend")%>
					],
										[
												'TV NonPrime',
				<%=request.getAttribute("salesMargin6")%>
					,
												"<i>TV NonPrime: </i>"
														+
				<%=request.getAttribute("salesMargin6")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("nonPrimeSpend")%>
					],
										[
												'TV Special',
				<%=request.getAttribute("salesMargin7")%>
					,
												"<i>TV Special: </i>"
														+
				<%=request.getAttribute("salesMargin7")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("specialSpend")%>
					],
										[
												'Display Fixed',
				<%=request.getAttribute("salesMargin8")%>
					,
												"<i>Display Fixed: </i>"
														+
				<%=request.getAttribute("salesMargin8")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("fixedSpend")%>
					],
										[
												'Display Home',
				<%=request.getAttribute("salesMargin9")%>
					,
												"<i>Display Home: </i>"
														+
				<%=request.getAttribute("salesMargin9")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("homeSpend")%>
					],
										[
												'Display Games',
				<%=request.getAttribute("salesMargin10")%>
					,
												"<i>Display Games: </i>"
														+
				<%=request.getAttribute("salesMargin10")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("gamesSpend")%>
					],
										[
												'Display Remark',
				<%=request.getAttribute("salesMargin11")%>
					,
												"<i>Display Remark: </i>"
														+
				<%=request.getAttribute("salesMargin11")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("remarketSpend")%>
					],
										[
												'Display Prog',
				<%=request.getAttribute("salesMargin12")%>
					,
												"<i>Display Prog: </i>"
														+
				<%=request.getAttribute("salesMargin12")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("programSpend")%>
					],
										[
												'Display Mobile',
				<%=request.getAttribute("salesMargin13")%>
					,
												"<i>Display Mobile: </i>"
														+
				<%=request.getAttribute("salesMargin13")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("mobileSpend")%>
					],
										[
												'Display Other',
				<%=request.getAttribute("salesMargin14")%>
					,
												"<i>Display Other: </i>"
														+
				<%=request.getAttribute("salesMargin14")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("otherSpend")%>
					],
										[
												'Radio',
				<%=request.getAttribute("salesMargin15")%>
					,
												"<i>Radio: </i>"
														+
				<%=request.getAttribute("salesMargin15")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("radioSpend")%>
					],
										[
												'Print',
				<%=request.getAttribute("salesMargin16")%>
					,
												"<i>Print: </i>"
														+
				<%=request.getAttribute("salesMargin16")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("printSpend")%>
					] ]);

						var dataPros = google.visualization
								.arrayToDataTable([
										[ '', '', {
											type : 'string',
											role : 'tooltip',
											'p' : {
												'html' : true
											}
										} ],
										[
												'TV Prime',
				<%=request.getAttribute("prosMargin1")%>
					,
												"<i>TV Prime: </i>"
														+
				<%=request.getAttribute("prosMargin1")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("primeSpend")%>
					],
										[
												'TV Cable',
				<%=request.getAttribute("prosMargin2")%>
					,
												"<i>TV Cable: </i>"
														+
				<%=request.getAttribute("prosMargin2")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("cableSpend")%>
					],
										[
												'TV DRTV',
				<%=request.getAttribute("prosMargin3")%>
					,
												"<i>TV DRTV: </i>"
														+
				<%=request.getAttribute("prosMargin3")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("drtvSpend")%>
					],
										[
												'TV Satelite',
				<%=request.getAttribute("prosMargin4")%>
					,
												"<i>TV Satelite: </i>"
														+
				<%=request.getAttribute("prosMargin4")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("satelliteSpend")%>
					],
										[
												'TV Local',
				<%=request.getAttribute("prosMargin5")%>
					,
												"<i>TV Local: </i>"
														+
				<%=request.getAttribute("prosMargin5")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("localSpend")%>
					],
										[
												'TV NonPrime',
				<%=request.getAttribute("prosMargin6")%>
					,
												"<i>TV NonPrime: </i>"
														+
				<%=request.getAttribute("prosMargin6")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("nonPrimeSpend")%>
					],
										[
												'TV Special',
				<%=request.getAttribute("prosMargin7")%>
					,
												"<i>TV Special: </i>"
														+
				<%=request.getAttribute("prosMargin7")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("specialSpend")%>
					],
										[
												'Display Fixed',
				<%=request.getAttribute("prosMargin8")%>
					,
												"<i>Display Fixed: </i>"
														+
				<%=request.getAttribute("prosMargin8")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("fixedSpend")%>
					],
										[
												'Display Home',
				<%=request.getAttribute("prosMargin9")%>
					,
												"<i>Display Home: </i>"
														+
				<%=request.getAttribute("prosMargin9")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("homeSpend")%>
					],
										[
												'Display Games',
				<%=request.getAttribute("prosMargin10")%>
					,
												"<i>Display Games: </i>"
														+
				<%=request.getAttribute("prosMargin10")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("gamesSpend")%>
					],
										[
												'Display Remark',
				<%=request.getAttribute("prosMargin11")%>
					,
												"<i>Display Remark: </i>"
														+
				<%=request.getAttribute("prosMargin11")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("remarketSpend")%>
					],
										[
												'Display Prog',
				<%=request.getAttribute("prosMargin12")%>
					,
												"<i>Display Prog: </i>"
														+
				<%=request.getAttribute("prosMargin12")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("programSpend")%>
					],
										[
												'Display Mobile',
				<%=request.getAttribute("prosMargin13")%>
					,
												"<i>Display Mobile: </i>"
														+
				<%=request.getAttribute("prosMargin13")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("mobileSpend")%>
					],
										[
												'Display Other',
				<%=request.getAttribute("prosMargin14")%>
					,
												"<i>Display Other: </i>"
														+
				<%=request.getAttribute("prosMargin14")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("otherSpend")%>
					],
										[
												'Radio',
				<%=request.getAttribute("prosMargin15")%>
					,
												"<i>Radio: </i>"
														+
				<%=request.getAttribute("prosMargin15")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("radioSpend")%>
					],
										[
												'Print',
				<%=request.getAttribute("prosMargin16")%>
					,
												"<i>Print: </i>"
														+
				<%=request.getAttribute("prosMargin16")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("printSpend")%>
					]

								]);

						var dataRev = google.visualization
								.arrayToDataTable([
										[ '', '', {
											type : 'string',
											role : 'tooltip',
											'p' : {
												'html' : true
											}
										} ],
										[
												'TV Prime',
				<%=request.getAttribute("revMargin1")%>
					,
												"<i>TV Prime: </i>"
														+
				<%=request.getAttribute("revMargin1")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("primeSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'TV Cable',
				<%=request.getAttribute("revMargin2")%>
					,
												"<i>TV Cable: </i>"
														+
				<%=request.getAttribute("revMargin2")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("cableSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'TV DRTV',
				<%=request.getAttribute("revMargin3")%>
					,
												"<i>TV DRTV: </i>"
														+
				<%=request.getAttribute("revMargin3")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("drtvSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'TV Satelite',
				<%=request.getAttribute("revMargin4")%>
					,
												"<i>TV Satelite: </i>"
														+
				<%=request.getAttribute("revMargin4")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("satelliteSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'TV Local',
				<%=request.getAttribute("revMargin5")%>
					,
												"<i>TV Local: </i>"
														+
				<%=request.getAttribute("revMargin5")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("localSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'TV NonPrime',
				<%=request.getAttribute("revMargin6")%>
					,
												"<i>TV NonPrime: </i>"
														+
				<%=request.getAttribute("revMargin6")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("nonPrimeSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'TV Special',
				<%=request.getAttribute("revMargin7")%>
					,
												"<i>TV Special: </i>"
														+
				<%=request.getAttribute("revMargin7")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("specialSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Display Fixed',
				<%=request.getAttribute("revMargin8")%>
					,
												"<i>Display Fixed: </i>"
														+
				<%=request.getAttribute("revMargin8")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("fixedSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Display Home',
				<%=request.getAttribute("revMargin9")%>
					,
												"<i>Display Home: </i>"
														+
				<%=request.getAttribute("revMargin9")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("homeSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Display Games',
				<%=request.getAttribute("revMargin10")%>
					,
												"<i>Display Games: </i>"
														+
				<%=request.getAttribute("revMargin10")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("gamesSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Display Remark',
				<%=request.getAttribute("revMargin11")%>
					,
												"<i>Display Remark: </i>"
														+
				<%=request.getAttribute("revMargin11")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("remarketSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Display Prog',
				<%=request.getAttribute("revMargin12")%>
					,
												"<i>Display Prog: </i>"
														+
				<%=request.getAttribute("revMargin12")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("programSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Display Mobile',
				<%=request.getAttribute("revMargin13")%>
					,
												"<i>Display Mobile: </i>"
														+
				<%=request.getAttribute("revMargin13")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("mobileSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Display Other',
				<%=request.getAttribute("revMargin14")%>
					,
												"<i>Display Other: </i>"
														+
				<%=request.getAttribute("revMargin14")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("otherSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Radio',
				<%=request.getAttribute("revMargin15")%>
					,
												"<i>Radio: </i>"
														+
				<%=request.getAttribute("revMargin15")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("radioSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					],
										[
												'Print',
				<%=request.getAttribute("revMargin16")%>
					,
												"<i>Print: </i>"
														+
				<%=request.getAttribute("revMargin16")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("printSpend")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					] ]);

						var dataCost = google.visualization
								.arrayToDataTable([
										[ '', '', {
											type : 'string',
											role : 'tooltip',
											'p' : {
												'html' : true
											}
										} ],
										[
												'TV Prime',
				<%=request.getAttribute("costMargin1")%>
					,
												"<i>TV Prime: </i>"
														+
				<%=request.getAttribute("costMargin1")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("primeCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("primeSpend")%>
					],
										[
												'TV Cable',
				<%=request.getAttribute("costMargin2")%>
					,
												"<i>TV Cable: </i>"
														+
				<%=request.getAttribute("costMargin2")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("cableCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("cableSpend")%>
					],
										[
												'TV DRTV',
				<%=request.getAttribute("costMargin3")%>
					,
												"<i>TV DRTV: </i>"
														+
				<%=request.getAttribute("costMargin3")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("drtvCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("drtvSpend")%>
					],
										[
												'TV Satelite',
				<%=request.getAttribute("costMargin4")%>
					,
												"<i>TV Satelite: </i>"
														+
				<%=request.getAttribute("costMargin4")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("satelliteCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("satelliteSpend")%>
					],
										[
												'TV Local',
				<%=request.getAttribute("costMargin5")%>
					,
												"<i>TV Local: </i>"
														+
				<%=request.getAttribute("costMargin5")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("localCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("localSpend")%>
					],
										[
												'TV NonPrime',
				<%=request.getAttribute("costMargin6")%>
					,
												"<i>TV NonPrime: </i>"
														+
				<%=request.getAttribute("costMargin6")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("nonPrimeCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("nonPrimeSpend")%>
					],
										[
												'TV Special',
				<%=request.getAttribute("costMargin7")%>
					,
												"<i>TV Special: </i>"
														+
				<%=request.getAttribute("costMargin7")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("specialCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("specialSpend")%>
					],
										[
												'Display Fixed',
				<%=request.getAttribute("costMargin8")%>
					,
												"<i>Display Fixed: </i>"
														+
				<%=request.getAttribute("costMargin8")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("fixedCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("fixedSpend")%>
					],
										[
												'Display Home',
				<%=request.getAttribute("costMargin9")%>
					,
												"<i>Display Home: </i>"
														+
				<%=request.getAttribute("costMargin9")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("homeCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("homeSpend")%>
					],
										[
												'Display Games',
				<%=request.getAttribute("costMargin10")%>
					,
												"<i>Display Games: </i>"
														+
				<%=request.getAttribute("costMargin10")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("gamesCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("gamesSpend")%>
					],
										[
												'Display Remark',
				<%=request.getAttribute("costMargin11")%>
					,
												"<i>Display Remark: </i>"
														+
				<%=request.getAttribute("costMargin11")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("remarketCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("remarketSpend")%>
					],
										[
												'Display Prog',
				<%=request.getAttribute("costMargin12")%>
					,
												"<i>Display Prog: </i>"
														+
				<%=request.getAttribute("costMargin12")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("programCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("programSpend")%>
					],
										[
												'Display Mobile',
				<%=request.getAttribute("costMargin13")%>
					,
												"<i>Display Mobile: </i>"
														+
				<%=request.getAttribute("costMargin13")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("mobileCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("mobileSpend")%>
					],
										[
												'Display Other',
				<%=request.getAttribute("costMargin14")%>
					,
												"<i>Display Other: </i>"
														+
				<%=request.getAttribute("costMargin14")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("otherCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("otherSpend")%>
					],
										[
												'Radio',
				<%=request.getAttribute("costMargin15")%>
					,
												"<i>Radio: </i>"
														+
				<%=request.getAttribute("costMargin15")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("radioCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("radioSpend")%>
					],
										[
												'Print',
				<%=request.getAttribute("costMargin16")%>
					,
												"<i>Print: </i>"
														+
				<%=request.getAttribute("costMargin16")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("printCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("printSpend")%>
					] ]);

						var dataProfit = google.visualization
								.arrayToDataTable([
										[ '', '', {
											type : 'string',
											role : 'tooltip',
											'p' : {
												'html' : true
											}
										} ],
										[
												'TV Prime',
				<%=request.getAttribute("profitMargin1")%>
					,
												"<i>TV Prime: </i>"
														+
				<%=request.getAttribute("profitMargin1")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("primeCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("primeSpend")%>
					],
										[
												'TV Cable',
				<%=request.getAttribute("profitMargin2")%>
					,
												"<i>TV Cable: </i>"
														+
				<%=request.getAttribute("profitMargin2")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("cableCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("cableSpend")%>
					],
										[
												'TV DRTV',
				<%=request.getAttribute("profitMargin3")%>
					,
												"<i>TV DRTV: </i>"
														+
				<%=request.getAttribute("profitMargin3")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("drtvCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("drtvSpend")%>
					],
										[
												'TV Satelite',
				<%=request.getAttribute("profitMargin4")%>
					,
												"<i>TV Satelite: </i>"
														+
				<%=request.getAttribute("profitMargin4")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("satelliteCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("satelliteSpend")%>
					],
										[
												'TV Local',
				<%=request.getAttribute("profitMargin5")%>
					,
												"<i>TV Local: </i>"
														+
				<%=request.getAttribute("profitMargin5")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("localCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("localSpend")%>
					],
										[
												'TV NonPrime',
				<%=request.getAttribute("profitMargin6")%>
					,
												"<i>TV NonPrime: </i>"
														+
				<%=request.getAttribute("profitMargin6")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("nonPrimeCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("nonPrimeSpend")%>
					],
										[
												'TV Special',
				<%=request.getAttribute("profitMargin7")%>
					,
												"<i>TV Special: </i>"
														+
				<%=request.getAttribute("profitMargin7")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("specialCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("specialSpend")%>
					],
										[
												'Display Fixed',
				<%=request.getAttribute("profitMargin8")%>
					,
												"<i>Display Fixed: </i>"
														+
				<%=request.getAttribute("profitMargin8")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("fixedCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("fixedSpend")%>
					],
										[
												'Display Home',
				<%=request.getAttribute("profitMargin9")%>
					,
												"<i>Display Home: </i>"
														+
				<%=request.getAttribute("profitMargin9")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("homeCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("homeSpend")%>
					],
										[
												'Display Games',
				<%=request.getAttribute("profitMargin10")%>
					,
												"<i>Display Games: </i>"
														+
				<%=request.getAttribute("profitMargin10")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("gamesCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("gamesSpend")%>
					],
										[
												'Display Remark',
				<%=request.getAttribute("profitMargin11")%>
					,
												"<i>Display Remark: </i>"
														+
				<%=request.getAttribute("profitMargin11")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("remarketCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("remarketSpend")%>
					],
										[
												'Display Prog',
				<%=request.getAttribute("profitMargin12")%>
					,
												"<i>Display Prog: </i>"
														+
				<%=request.getAttribute("profitMargin12")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("programCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("programSpend")%>
					],
										[
												'Display Mobile',
				<%=request.getAttribute("profitMargin13")%>
					,
												"<i>Display Mobile: </i>"
														+
				<%=request.getAttribute("profitMargin13")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("mobileCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("mobileSpend")%>
					],
										[
												'Display Other',
				<%=request.getAttribute("profitMargin14")%>
					,
												"<i>Display Other: </i>"
														+
				<%=request.getAttribute("profitMargin14")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("otherCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("otherSpend")%>
					],
										[
												'Radio',
				<%=request.getAttribute("profitMargin15")%>
					,
												"<i>Radio: </i>"
														+
				<%=request.getAttribute("profitMargin15")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("radioCost")%>
					+ "<i> - Spend: </i>"
														+
				<%=request.getParameter("radioSpend")%>
					],
										[
												'Print',
				<%=request.getAttribute("profitMargin16")%>
					,
												"<i>Print: </i>"
														+
				<%=request.getAttribute("profitMargin16")%>
					+ "<i> - Conversion Value: </i>"
														+
				<%=request.getParameter("conversionValue")%>
					+ "<i> - Cost: </i>"
														+
				<%=request.getParameter("printCost")%>
					+ "<i> - Spend: </i>"
														+
			
					
				<%=request.getParameter("printSpend")%>
					] ]);

						var dataInputSpend = google.visualization
								.arrayToDataTable([
										[ '', '' ],
										[ 'TV Prime',
				<%=request.getParameter("primeSpend")%>
					],
										[ 'TV Cable',
				<%=request.getParameter("cableSpend")%>
					],
										[ 'TV DRTV',
				<%=request.getParameter("drtvSpend")%>
					],
										[ 'TV Satelite',
				<%=request.getParameter("satelliteSpend")%>
					],
										[ 'TV Local',
				<%=request.getParameter("localSpend")%>
					],
										[ 'TV NonPrime',
				<%=request.getParameter("nonPrimeSpend")%>
					],
										[ 'TV Special',
				<%=request.getParameter("specialSpend")%>
					],
										[ 'Display Fixed',
				<%=request.getParameter("fixedSpend")%>
					],
										[ 'Display Home',
				<%=request.getParameter("homeSpend")%>
					],
										[ 'Display Games',
				<%=request.getParameter("gamesSpend")%>
					],
										[ 'Display Remark',
				<%=request.getParameter("remarketSpend")%>
					],
										[ 'Display Prog',
				<%=request.getParameter("programSpend")%>
					],
										[ 'Display Mobile',
				<%=request.getParameter("mobileSpend")%>
					],
										[ 'Display Other',
				<%=request.getParameter("otherSpend")%>
					],
										[ 'Radio',
				<%=request.getParameter("radioSpend")%>
					],
										[ 'Print',
				<%=request.getParameter("printSpend")%>
					] ]);

						var jsonData = ${jsonData}
						var dataNew = new google.visualization.DataTable(jsonData);
						var view = new google.visualization.DataView(dataNew);
						
						
						var options = {
							legend : 'none',
							tooltip : {
								isHtml : true
							}
						};

						var optionsInput = {
							legend : 'none',
							pieHole : 0.4,
							'width': 300,
				            'height': 400,
							'chartArea': {'width': '90%', 'height': '100%'},
							tooltip : {
								isHtml : true
							}
						};

						var chartSales = new google.visualization.ColumnChart(
								document.getElementById('sales'));
						chartSales.draw(dataSales, options);
						var chartPros = new google.visualization.ColumnChart(
								document.getElementById('prospects'));
						chartPros.draw(dataPros, options);
						var chartRev = new google.visualization.ColumnChart(
								document.getElementById('revenues'));
						chartRev.draw(dataRev, options);
						var chartCost = new google.visualization.ColumnChart(
								document.getElementById('cost'));
						chartCost.draw(dataCost, options);
						var chartProfit = new google.visualization.ColumnChart(
								document.getElementById('profits'));
						chartProfit.draw(dataProfit, options);
						var chartInputSpend = new google.visualization.PieChart(
								document.getElementById('inputSpend'));
						chartInputSpend.draw(dataInputSpend, optionsInput);
						
						var chartNew = new google.visualization.ColumnChart(document
								.getElementById('chart_div'));

						chartNew.draw(view,options);

					}
				</script>


				<div class="ui segment">
					<div id="chart_div" style="width: 900px; height: 500px;"></div>
				</div>
				
				<div class="ui segment">
					<div class="ui top right attached label">profits</div>
					<div id="profits" style="width: 900px; height: 500px;"></div>
				</div>
				<div class="ui segment">
					<div class="ui top right attached label">sales</div>
					<div id="sales" style="width: 900px; height: 500px;"></div>
				</div>
				<div class="ui segment">
					<div class="ui top right attached label">prospects</div>
					<div id="prospects" style="width: 900px; height: 500px;"></div>
				</div>
				<div class="ui segment">
					<div class="ui top right attached label">revenues</div>
					<div id="revenues" style="width: 900px; height: 500px;"></div>
				</div>
				<div class="ui segment">
					<div class="ui top right attached label">cost</div>
					<div id="cost" style="width: 900px; height: 500px;"></div>
				</div>


			</div>
		</div>
		
		
	
	</form>

</body>
</html>