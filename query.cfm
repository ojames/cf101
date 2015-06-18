<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>cfquery example</title>
</head>

<body>


<CFQUERY NAME="q" DATASOURCE="cfartgallery">
	SELECT * from artists
    JOIN  art ON artists.artistid = art.artistid
    ORDER BY lastname, firstname
</CFQUERY>

<cfoutput query="q" group="lastname">
<h1>#lastname#</h1>
<cfoutput>#artname#<br></cfoutput>
</cfoutput>

<cfdump var="#q#" label="join example">

</body>
</html>