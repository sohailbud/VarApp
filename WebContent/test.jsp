<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>

<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/semantic.min.js"></script>
<script src="js/main.js"></script>

<script type="text/javascript" src="//www.google.com/jsapi"></script>
<script type="text/javascript">

function createOption(selectbox, text, value) {
	var opt = document.createElement("OPTION");
	opt.text = text;
	opt.value = value;
	selectbox.options.add(opt);
}

window.onload = function() {
	var month = new Array("January","February","March","April","May","June","July","August",
			"September","October","November","December");
	for (var i=0; i<month.length; ++i) {
		createOption(document.f1.variableSelectTEST, month[i], month[i]);
	}
}
</script>

</head>

<body>
<br><br>
<form name="f1" >

<select name="variableSelectTEST" multiple>
</select>

</form>


</body>

</html>