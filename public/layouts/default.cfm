<cfsilent>
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

		Document:	/public/layouts/default.cfm
		Author:		Steve Withington | www.stephenwithington.com
		Modified:	2011.02.04

--->
	<cfscript>
		//request.layout = false;
	</cfscript>
</cfsilent>
<cfoutput>
	<div class="clearfix">
		<p><a href="#buildURL( 'public:main' )#">Public Main</a> | <a href="#buildURL( 'public:main.another' )#">Another Page</a></p>
	</div>
	<div class="clearfix">
		#body#
	</div>
</cfoutput>