<cfcomponent>
	<cffunction name="onrequeststart" access="public" returntype="boolean">
		<cfargument name="thestring" type="string" required="yes">
        <h1>The request has started</h1>
		<cfreturn true>
	</cffunction>
</cfcomponent>