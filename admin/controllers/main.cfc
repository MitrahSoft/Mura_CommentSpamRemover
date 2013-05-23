<!---

This file is part of muraFW1
(c) Stephen J. Withington, Jr. | www.stephenwithington.com

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

		Document:	/admin/controllers/main.cfc
		Author:		Steve Withington | www.stephenwithington.com
		Modified:	2011.03.15

--->
<cfcomponent extends="controller" output="false">

	<!--- ********************************* PAGES ******************************************* --->

	<cffunction name="default" output="false" returntype="any">
		<cfargument name="rc" />
		
		<cfif structkeyexists(rc, "cid")>
			<cfquery datasource="#rc.$.getConfigBean().getDatasource()#">
				delete from tcontentcomments
				where commentid = '#urldecode(rc.cid)#'
			</cfquery>
		</cfif>
		
		<cfquery name="rc.qGetComments" datasource="#rc.$.getConfigBean().getDatasource()#">
			select distinct commentid, name, entered, email, comments, ip
			from tcontentcomments
			where siteid = '#session.siteid#'
		</cfquery>
	</cffunction>
	
	<cffunction name="deleteComments" output="false" returntype="any">
		<cfargument name="rc" />
		
		<cfif structkeyexists(rc, "selectedComments")>
			<cfquery datasource="#rc.$.getConfigBean().getDatasource()#">
				delete from tcontentcomments
				where commentid in ( <cfqueryparam value="#urldecode(rc.selectedComments)#" cfsqltype="cf_sql_varchar" list="true">)
			</cfquery>
		</cfif>

	</cffunction>

</cfcomponent>
