<!---

This file is part of MuraFW1
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

--->
<cfinclude template="../includes/fw1config.cfm" />
<cfoutput><plugin>
	<name>#variables.framework.package#</name>
	<package>#variables.framework.package#</package>
	<directoryFormat>packageOnly</directoryFormat>
	<provider>Steve Withington</provider>
	<providerURL>http://stephenwithington.com</providerURL>
	<loadPriority>5</loadPriority>
	<version>#variables.framework.packageVersion#</version>
	<category>Application</category>
	<ormcfclocation />
	<customtagpaths />
	<mappings />
	<settings />
	<eventHandlers>
		<eventHandler event="onApplicationLoad" component="includes.eventHandler" persist="false" />
	</eventHandlers>
	<displayobjects location="global">
		<displayobject name="MuraFW1 Simple Display Object" displayobjectfile="includes/display_objects/simple.cfm" />
		<displayobject name="MuraFW1 App1" displaymethod="dspMuraFW1App1" component="includes.displayObjects" persist="false" />
		<displayobject name="MuraFW1 App2" displaymethod="dspMuraFW1App2" component="includes.displayObjects" persist="false" />
	</displayobjects>
</plugin></cfoutput>