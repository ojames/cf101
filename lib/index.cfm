<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>

<!---<cfset strLib = createobject("component","string")>--->


cfinvoke

<cfdump var="#strLib#">
<!---<cfdump var="#getmetadata(strLib)#">--->

<cfset inputString = "This is a string that has a URL in it, http://www.cflib.org/ so we want that URL to be a link">
<cfoutput>#strLib.ActivateURL(inputString)#</cfoutput>

</body>
</html>