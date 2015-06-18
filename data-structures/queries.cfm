<cfscript>
	data = queryNew("id, first_name, last_name","integer,varchar,varchar");
	queryAddRow(data);
	querySetCell(data,"id","1");
	querySetCell(data,"first_name","Oliver");
	querySetCell(data,"last_name","James");
	writeDump(data);
</cfscript>
