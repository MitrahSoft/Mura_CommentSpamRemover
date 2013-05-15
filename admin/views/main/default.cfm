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

		Document:	/admin/views/main/default.cfm
		Author:		Steve Withington | www.stephenwithington.com
		Modified:	2011.02.04

--->
</cfsilent>
<cfoutput>
	<h3>Site Comments</h3>	
	<!---<ul id="navTask">
		<li><a href="#buildURL('admin:main.another')#">Another Page</a></li>
	</ul>--->
	<form action="#buildURL('admin:main.deleteComments')#" method="post">
	<table width="100%" id="siteComments">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>IP</th>
			<th>Date Entered</th>
			<th>Comment</th>
			<th>Delete</th>
			<th>select</th>
		</tr>
		<cfloop query="rc.qGetComments">
			<tr>
				<td>#name#</td>
				<td>#email#</td>
				<td>#ip#</td>
				<td>#dateformat(entered, "short")#</td>
				<td>
					<cftooltip tooltip="#comments#">
						View
					</cftooltip> 
				</td>
				<td>
					<a href="#buildURL('admin:main.default?cid=#URLEncodedFormat(commentid)#')#" onclick="return confirm('Delete the comment by #name#? [Comment Date: #dateformat(entered, 'short')#]')">Delete</a>
				</td>
				<td><input type="checkbox" name="selectedComments" value="#URLEncodedFormat(commentid)#"></td>
			</tr>
		</cfloop>
	</table>
	<div style="margin-bottom: 18px;" class="row">
		<button type="submit" value="save" class="btn btn-danger pull-right" onclick="return confirm('Delete the selected comment(s)')"><i class="icon-trash icon-white" data-original-title=""></i>
Delete selection</button>
	</div>
	</form>
</cfoutput>