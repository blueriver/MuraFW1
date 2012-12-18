/*

This file is part of MuraFW1
Copyright (c) 2010-2012 Stephen J. Withington, Jr.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

	NOTES:
		All ADMIN controllers should EXTEND this file.

*/
component persistent="false" accessors="true" output="false" extends="mura.cfobject" {

	property name="fw" type="any" default="";

	public any function init (required fw) {
		setFW(arguments.fw);
	}

	public any function before(required rc) {
		if ( StructKeyExists(rc, '$') ) {
			var $ = rc.$;
		};

		if ( rc.isFrontEndRequest ) {
			getFW().redirect(action='public:main.default');
		};

		if ( !rc.$.currentUser().isLoggedIn() ) {
			location(url='#rc.$.globalConfig('context')#/admin/', addtoken=false);
		};
	}

}