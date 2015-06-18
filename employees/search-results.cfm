<!---
- validate parms
- query the db using passed search terms
- did we get any hits?  no, display err, yes, display results
--->

<!---<cfparam name = "FORM.first_name" default = "">
<cfparam name = "FORM.last_name" default = "">--->
<cfset failure = false>
<cfif NOT IsDefined("FORM.first_name")>
	<script>
    	alert("First Name not found");		
    </script>
	<cfset failure = true>
</cfif>

<cfif NOT IsDefined("FORM.last_name")>
	<script>
    	alert("Last Name not found");
    </script>
	<cfset failure = true>
</cfif>

<cfif len(Trim(FORM.last_name)) LT 4>
	<script>
    	alert("Last Name must be at least 3 characters");
    </script>
	<cfset failure = true>
</cfif>

<cfif failure>
    <cflocation url="search.cfm">
</cfif>

<cfquery name="q" datasource="#dsn#" result="info">
  SELECT *  
    FROM employees
   WHERE first_name LIKE '#form.first_name#%' and last_name LIKE '#form.last_name#%'
</cfquery>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>search results</title>
<cfinclude template="../includes/head.cfm">
</head>

<body>
<cfinclude template="../includes/nav.cfm">
<div class="container">
<cfdump var="#form#" />
<cfdump var="#q.recordcount#" />
<ol class="list-group">
<cfoutput query="q" maxrows="100">
	<li class="list-group-item"><a href="details.cfm?emp_no=#q.emp_no#">#last_name#, #first_name#</a></li>
</cfoutput>
</ol>



</div>
</body>
</html>