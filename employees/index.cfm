<!doctype html>
<html>
<cfinclude template="../includes/head.cfm">
<head>
<meta charset="utf-8">
<title>cfquery example</title>
</head>

<body>
<cfinclude template="../includes/nav.cfm">
<CFQUERY NAME="q" DATASOURCE="#dsn#">
	select * from employees order by last_name, first_name asc limit 100
</CFQUERY>

<!---<cfdump var="#q#">--->
<ol>
<cfoutput query="q">
<li>
<a href="details.cfm?emp_no=#emp_no#">
#last_name#, #first_name#
</a>
</li>
</cfoutput>
</ol>

</body>
</html>