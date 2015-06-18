<cfscript>
employees = [];
employee = {};
employee["First_Name"] = "Oliver";
employee["Last_Name"] = "James";
employee["Age"] = "50";
employee["isMember"] = true;
ArrayAppend(employees,duplicate(employee));


employee["First_Name"] = "Tom";
employee["Last_Name"] = "Jones";
employee["Age"] = "33";
employee["isMember"] = false;
ArrayAppend(employees,employee);
writedump(employees);





</cfscript>
